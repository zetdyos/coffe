from django.contrib import admin
from django.forms import ModelForm
from django.db.models import Q
from django.contrib.auth import get_user_model

from article.models import Article


# The timezone support was introduced in Django 1.4, fallback to standard library for 1.3.
try:
    from django.utils.timezone import now
except ImportError:
    from datetime import datetime

    now = datetime.now


class ArticleAdminForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super(ArticleAdminForm, self).__init__(*args, **kwargs)
        self.fields['publication_date'].required = False  # The admin's .save() method fills in a default.


class ArticleAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('title',)}
    form = ArticleAdminForm

    fieldsets = (
        (None, {
            'fields': ('title', 'slug',),
        }),
        ("Author", {
            'fields': ('author',),
        }),
        ("Contents", {
            'fields': ('content',),
        }),
        ("Publication settings", {
            'fields': ('publication_date', 'enable_comments',),
        }),
        ("Image front page ", {
            'fields': ('image',),
        }),
    )

    def save_model(self, request, obj, form, change):
        if not obj.publication_date:
            # auto_now_add makes the field uneditable.
            # a default in the model fills the field before the post is written (too early)
            obj.publication_date = now()
        obj.save()

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "author":
            kwargs["queryset"] = get_user_model().objects.filter(
                Q(is_superuser=True) | Q(user_permissions__content_type__app_label='article',
                                         user_permissions__content_type__model='article')).distinct()
            kwargs['initial'] = request.user.id
        return super(ArticleAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)


admin.site.register(Article, ArticleAdmin)
