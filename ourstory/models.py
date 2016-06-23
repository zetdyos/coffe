from django.db import models

from imagekit.processors import ResizeToFill
from imagekit.models import ProcessedImageField
from ckeditor_uploader.fields import RichTextUploadingField


class OurStory(models.Model):
    title = models.CharField(u'Story title',max_length=50, default=u'Our Story')
    sideimage = ProcessedImageField(upload_to='our/story/%Y/%m/%d/',
                                    processors=[ResizeToFill(475, 602)],
                                    format='JPEG',
                                    options={'quality': 60})
    content = RichTextUploadingField(u"Story")

    published = models.BooleanField(u"Is published?", default=False)

    def __unicode__(self):
        return self.title

    class Meta:
        ordering = ['title']
        verbose_name = u'Our Story'
