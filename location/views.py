from django.shortcuts import render, get_object_or_404
from django.shortcuts import redirect
from location.models import Location


def location_detail(request, pk):
    location = get_object_or_404(Location, pk=pk)
    return render(request, 'location/details.html', {'location': location})
