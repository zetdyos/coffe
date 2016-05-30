from django.contrib import admin
from django.forms import ModelForm

from event.models import Event


try:
    from django.utils.timezone import now
except ImportError:
    from datetime import datetime

    now = datetime.now


class EventAdminForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super(EventAdminForm, self).__init__(*args, **kwargs)
        self.fields['publication_date'].required = False  # The admin's .save() method fills in a default.


class EventAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('title',)}


admin.site.register(Event, EventAdmin)
