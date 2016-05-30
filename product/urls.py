from django.conf.urls import url
from product.views import ProductListView, ProductFullListView, ProductDetailView

urlpatterns = [
    url(r'^detail/(?P<slug>[^/]+)/$', ProductDetailView.as_view(), name='product-details'),
    url(r'^full/$', ProductFullListView.as_view(), name='product-full-list'),
    url(r'^$', ProductListView.as_view(), name='product-list'),
]
