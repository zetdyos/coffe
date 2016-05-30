from django.views.generic import TemplateView, DetailView
from coffegallery.models import CoffeAlbum, Photo, YouTubeVideo


class CoffeAlbumView(TemplateView):
    template_name = 'coffegallery/list.html'

    def get_context_data(self, **kwargs):
        context = super(CoffeAlbumView, self).get_context_data(**kwargs)
        context.update({
            'galleries': CoffeAlbum.objects.all()[0],
        })
        return context


class PhotoDetailView(DetailView):
    model = Photo
    template_name = 'coffegallery/photodetails.html'


class VideoDetailView(DetailView):
    model = YouTubeVideo
    template_name = 'coffegallery/videodetails.html'