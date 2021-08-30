from django.db import models

# Create your models here.
class Autores(models.Model):
    nombre = models.CharField(max_length=100)
    apellido = models.CharField(max_length=100)

    def __str__(self):
        return f"Autor: {self.nombre} {self.apellido}"

class Libros(models.Model):
    titulo = models.CharField(max_length=100)
    autor = models.ForeignKey(Autores, on_delete=models.SET_NULL, null=True)
    disponibles = models.IntegerField()
    precio = models.IntegerField()
    categoria = models.CharField(max_length=100)
    imagen = models.ImageField(upload_to='uploads/% Y/% m/% d/', height_field=None, width_field=None, max_length=100)

    def __str__(self):
        return f"""Titulo {self.titulo}
        Libros disponibles: {self.disponibles}
        Precio: {self.precio}
        Categoria: {self.categoria}
        Imagen: {self.imagen}"""