from django.core.urlresolvers import reverse
from django.db import models
from django.contrib.auth.models import User
from ckeditor_uploader.fields import RichTextUploadingField
from django.utils import timezone


class Event(models.Model):
    image = models.ImageField(blank=True, upload_to='event/images')
    title = models.CharField("Title", max_length=200)
    slug = models.SlugField("Slug", unique=True)
    description = RichTextUploadingField("Description")
    author = models.ForeignKey(User, blank=True, null=True)
    start_date = models.DateTimeField("Start date")
    end_date = models.DateTimeField(default=timezone.now)
    publication_date = models.DateTimeField("Publication date")

    class Meta:
        verbose_name = "Event"
        verbose_name_plural = "Events"
        get_latest_by = "order_date"

    def __unicode__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('event-details', kwargs={'slug': self.slug})
