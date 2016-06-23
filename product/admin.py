from django.contrib import admin
from django.forms import ModelForm

from product.models import Product


# The timezone support was introduced in Django 1.4, fallback to standard library for 1.3.
try:
    from django.utils.timezone import now
except ImportError:
    from datetime import datetime

    now = datetime.now


class ProductAdminForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super(ProductAdminForm, self).__init__(*args, **kwargs)
        self.fields['publication_date'].required = False  # The admin's .save() method fills in a default.


class ProductAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ('title',)}


admin.site.register(Product, ProductAdmin)
