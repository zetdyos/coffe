from django.core.urlresolvers import reverse
from django.db import models
from django.contrib.auth.models import User
from ckeditor_uploader.fields import RichTextUploadingField
from django.utils import timezone


class Product(models.Model):
    title = models.CharField("Title", max_length=200)
    slug = models.SlugField("Slug", unique=True)
    price = models.DecimalField("Price", max_digits=5, decimal_places=2)
    description = RichTextUploadingField("Description")
    author = models.ForeignKey(User, blank=True, null=True)
    publication_date = models.DateTimeField(default=timezone.now)
    image = models.ImageField(blank=True, upload_to='product/images')
    enable = models.BooleanField("Enable", default=True)

    class Meta:
        verbose_name = "Product"
        verbose_name_plural = "Products"

    def __unicode__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('product-details', kwargs={'slug': self.slug})

