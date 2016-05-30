from django.shortcuts import render
from django.utils import timezone

from article.models import Article
from event.models import Event
from product.models import Product


def index(request):
    products = Product.objects.filter(enable="true").order_by('publication_date')[:3]
    articles = Article.objects.all().order_by('publication_date')[:10]
    try:
        event = Event.objects.get(end_date__gte=timezone.now)
    except Event.DoesNotExist:
        event = None
    return render(request, 'index.html', {'articles': articles, 'products': products, 'event': event})

