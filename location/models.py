from django.db import models

from imagekit.processors import ResizeToFill
from imagekit.models import ProcessedImageField
from ckeditor_uploader.fields import RichTextUploadingField


class Location(models.Model):
    name = models.CharField(u'Location',max_length=50, default=u'Location')
    photo = ProcessedImageField(upload_to='location/store/%Y/%m/%d/',
                                    processors=[ResizeToFill(365, 260)],
                                    format='JPEG',
                                    options={'quality': 60})

    map = models.CharField(u'Map',max_length=2000, default=u'Map')
    address = models.CharField(u'Address',max_length=50, default=u'Address')
    phone = models.CharField(u'Phone',max_length=50, default=u'Phone')
    hours = models.CharField(u'Store Hours',max_length=50, default=u'Store Hours')
    published = models.BooleanField(u"Is published?", default=False)

    def __unicode__(self):
        return self.name

    class Meta:
        ordering = ['name']
        verbose_name = u'Locations'