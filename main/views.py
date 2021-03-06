from django.shortcuts import render
from django.utils import timezone

from article.models import Article
from event.models import Event
from product.models import Product
from coffegallery.models import CoffeAlbum
from location.models import Location


def index(request):
    products = Product.objects.filter(enable="true").order_by('publication_date')[:3]
    articles = Article.objects.all().order_by('publication_date')[:10]
    album = CoffeAlbum.objects.filter(enable_album='true')[0]
    photos = album.photo_set.all
    location = Location.objects.filter(published='true')

    try:
        event = Event.objects.get(end_date__gte=timezone.now)
    except Event.DoesNotExist:
        event = None
    return render(request, 'index.html', {'articles': articles, 'products': products, 'event': event, 'photos': photos, 'locations': location})
