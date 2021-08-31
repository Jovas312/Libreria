from django.shortcuts import get_object_or_404, render
from .models import Libros, Autores
from django.template import context
from django.contrib.auth.forms import UserCreationForm
from django.contrib import messages

# Create your views here.
def Index_Libreria(request):
    libros = Libros.objects.order_by("id")
    return render(request, "principal.html", {"libros":libros})

def detalleLibro(request, id):
    #persona = Persona.objects.get(pk=id)
    libro = get_object_or_404(Libros, pk=id)
    return render(request, "detalle_libro.html", {"libro":libro})

def register(request):
    if request.method == "POST":
        form = UserCreationForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data["username"]
            messages.success(request, f"Usuario {username} creado")
    else:
        form = UserCreationForm()
    context = {"form":form}
    return render(request, "register.html", context)
