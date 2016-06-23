from django.views.generic import DetailView

from event.models import Event


class EventDetailView(DetailView):
    model = Event
    template_name = 'event/details.html'