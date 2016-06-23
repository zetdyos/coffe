from django.contrib import admin
from django.forms import ModelForm
from ourstory.models import OurStory


class OurStoryAdminForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super(OurStoryAdminForm, self).__init__(*args, **kwargs)
        self.fields['title'].required = False
        self.fields['content'].required = True


class OurStorymAdmin(admin.ModelAdmin):
    form = OurStoryAdminForm

    def save_model(self, request, obj, form, change):
        if obj.published:
            OurStory.objects.filter(published=True).update(published=False)
        obj.save()


admin.site.register(OurStory, OurStorymAdmin)
