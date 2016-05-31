from django.db import models

from imagekit.models import ImageSpecField
from imagekit.processors import ResizeToFill
from imagekit.models import ProcessedImageField


class CoffeAlbum(models.Model):
    title = models.CharField("Album title", max_length=50)
    description = models.TextField("Album description", max_length=255, blank=True)
    enable_album = models.BooleanField("Enable Album", default=False)

    def __unicode__(self):
        return self.title

    class Meta:
        verbose_name = 'Coffe Media Album'


class YouTubeVideo(models.Model):
    album = models.ForeignKey(CoffeAlbum, blank=True, null=True)
    title = models.CharField(max_length=50)
    embed_code = models.TextField('Video url(youtube|youtu|vimeo)')
    thumbnail = ProcessedImageField(upload_to='galleries/video/%Y/%m/%d/thumbnail',
                                    processors=[ResizeToFill(380, 260)],
                                    format='JPEG',
                                    options={'quality': 60})

    def __unicode__(self):
        return self.title

    # def get_absolute_url(self):
    #     return reverse('video-details', kwargs={'pk': self.pk})

    class Meta:
        ordering = ['title']
        verbose_name = 'Embed Video Url '


class Photo(models.Model):
    album = models.ForeignKey(CoffeAlbum, blank=True, null=True)
    title = models.CharField(max_length=50)
    description = models.CharField(max_length=255, blank=True)
    original_image = models.ImageField(upload_to='galleries/%Y/%m/%d')
    thumbnail = ImageSpecField(source='original_image',
                               processors=[ResizeToFill(380, 260)],
                               format='JPEG',
                               options={'quality': 60})
    thumbnail_slider = ImageSpecField(source='original_image',
                                      processors=[ResizeToFill(618, 246)],
                                      format='JPEG',
                                      options={'quality': 60})

    def __unicode__(self):
        return self.title

    # def get_absolute_url(self):
    #     return reverse('photo-details', kwargs={'pk': self.pk})

    class Meta:
        ordering = ['title']
        verbose_name = 'Photo'
