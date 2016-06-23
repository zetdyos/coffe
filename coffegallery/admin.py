from django.contrib import admin
from django.forms import ModelForm
from django.db.models import Q
from django.contrib.auth import get_user_model

from coffegallery.models import CoffeAlbum, YouTubeVideo, Photo


class CoffeAlbumAdminForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super(CoffeAlbumAdminForm, self).__init__(*args, **kwargs)
        self.fields['title'].required = False  # The admin's .save() method fills in a default.


class CoffeAlbumAdmin(admin.ModelAdmin):
    form = CoffeAlbumAdminForm

    def save_model(self, request, obj, form, change):
        if obj.enable_album:
            CoffeAlbum.objects.filter(enable_album=True).update(enable_album=False)
        obj.save()

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "author":
            kwargs["queryset"] = get_user_model().objects.filter(
                Q(is_superuser=True) | Q(user_permissions__content_type__app_label='CoffeAlbum',
                                         user_permissions__content_type__model='CoffeAlbum')).distinct()
            kwargs['initial'] = request.user.id
        return super(CoffeAlbumAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)


admin.site.register(CoffeAlbum, CoffeAlbumAdmin)
admin.site.register(YouTubeVideo)
admin.site.register(Photo)
