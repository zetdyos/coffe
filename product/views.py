from django.views.generic import ListView, DetailView
from product.models import Product


class ProductListView(ListView):
    paginate_by = 10
    model = Product
    template_name = 'product/list.html'


class ProductFullListView(ProductListView):
    paginate_by = 2
    template_name = 'product/list_full.html'


class ProductDetailView(DetailView):
    model = Product
    template_name = 'product/details.html'