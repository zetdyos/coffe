from distutils.core import setup

setup(
    name='CoffeBar',
    version='1.2',
    packages=['main', 'main.migrations', 'event', 'event.migrations', 'article', 'article.migrations',
              'article.templatetags', 'product', 'product.migrations', 'Coffebar', 'coffegallery',
              'coffegallery.migrations', 'contact_form', 'contact_form.tests', 'simplemathcaptcha'],
    url='www.molanco.com',
    license='GPL',
    author='Molanco',
    author_email='eperezm@gmail.com',
    description='Coffebar website'
)
