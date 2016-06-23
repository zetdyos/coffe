from django.views.generic import TemplateView
from ourstory.models import OurStory


class OurStoryView(TemplateView):
    template_name = 'OurStory/details.html'

    def get_context_data(self, **kwargs):
        context = super(OurStoryView, self).get_context_data(**kwargs)
        context.update({
            'story': OurStory.objects.filter(published=True)[0],
        })
        return context


