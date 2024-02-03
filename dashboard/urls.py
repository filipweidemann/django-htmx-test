from django.urls import path
from dashboard.views import index
from dashboard.partials import index_greeting

urlpatterns = [
    path("partials/index/heading", index_greeting),
    path("", index, name="index"),
]
