from django.shortcuts import get_object_or_404, redirect, render

from Index.Carrito import Carrito
from .admin import Libros
from .forms import CustomUserCreationForm, LibroForm
from django.contrib.auth import authenticate, login
from django.contrib import messages

# Create your views here.
def Index_Libreria(request):
    libros = Libros.objects.order_by("id")
    return render(request, "principal.html", {"libros":libros})

def nuevoLibro(request):
    if request.method == "POST":
        formaLibro = LibroForm(request.POST)
        if formaLibro.is_valid():
            formaLibro.save()
            return redirect("principal.html")
    else:
        formaLibro = LibroForm()
    return render(request, "registration/nuevo.html", {"formaLibro":formaLibro})

def registro(request):
    data = {
        "form":CustomUserCreationForm()
    }
    if request.method == "POST":
        formulario = CustomUserCreationForm(data=request.POST)
        if formulario.is_valid():
            formulario.save()
            user = authenticate(username=formulario.cleaned_data["username"], password=formulario.cleaned_data["password1"])
            login(request, user)
            messages.success(request, "Registrado exitosamente")
            #Redirigir al home
            return redirect(to="principal")
        data["form"] = formulario
    return render(request, "registration/registro.html", data)

def informacion(request, id):
    #libro = Libros.objects.get(pk=id)
    libro = get_object_or_404(Libros, pk=id)
    return render(request, "registration/informacion.html", {"libro":libro})

def agregar_libro(request, libro_id):
    carrito = Carrito(request)
    libro = Libros.objects.get(id=libro_id)
    carrito.agregar(libro)
    return redirect("principal")

def eliminar_libro(request, libro_id):
    carrito = Carrito(request)
    libro = Libros.objects.get(id=libro_id)
    carrito.elimiar(libro)
    return redirect("principal")

def restar_libro(request, libro_id):
    carrito = Carrito(request)
    libro = Libros.objects.get(id=libro_id)
    carrito.restar(libro)
    return redirect("principal")

def limpiar_carrito(request):
    carrito = Carrito(request)
    carrito.limpiar()
    return redirect("principal")