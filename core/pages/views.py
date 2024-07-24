from django.shortcuts import render


def index(request):
    return render(request, template_name='pages/index.html',
                  context={'title': 'Home page', 'content': 'Welcome to my preview'})
