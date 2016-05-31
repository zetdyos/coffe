from django.views.generic import TemplateView

from coffegallery.models import CoffeAlbum


class CoffeAlbumView(TemplateView):
    template_name = 'coffegallery/list.html'

    def get_context_data(self, **kwargs):
        context = super(CoffeAlbumView, self).get_context_data(**kwargs)
        context.update({
            'galleries': CoffeAlbum.objects.filter(enable_album=True)[0],
        })
        return context


