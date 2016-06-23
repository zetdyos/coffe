from django.views.generic import ListView, DetailView
from article.models import Article


class ArticleListView(ListView):
    paginate_by = 4
    model = Article
    template_name = 'article/list.html'


class ArticleFullListView(ArticleListView):
    paginate_by = 2
    template_name = 'article/list_full.html'


class ArticleDetailView(DetailView):
    model = Article
    template_name = 'article/details.html'