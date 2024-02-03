import random
from django.http import HttpResponse
from django.template import loader


def index_greeting(request):
    template = loader.get_template("partials/index/heading.html")
    emojis = ["🥰", "😘", "🤗"]
    context = {"emoji": random.choice(emojis)}
    return HttpResponse(template.render(context, request))
