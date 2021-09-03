from django.db import models

# Create your models here.
class Autores(models.Model):
    nombre = models.CharField(max_length=100)
    apellido = models.CharField(max_length=100)

    def __str__(self):
        return f"Autor: {self.nombre} {self.apellido}"

class Categorias(models.Model):
    categoria = models.CharField(max_length=100)

    def __str__(self):
        return f"Categoria: {self.categoria}"

class Libros(models.Model):
    titulo = models.CharField(max_length=100)
    autor = models.ForeignKey(Autores, on_delete=models.SET_NULL, null=True)
    descripcion = models.TextField()
    disponibles = models.IntegerField()
    precio = models.IntegerField()
    categoria = models.ForeignKey(Categorias, on_delete=models.SET_NULL, null=True)
    imagen = models.ImageField(upload_to='productos', null=True)

    def __str__(self):
        return f"""Titulo {self.titulo}
        Autor: {self.autor}
        Descripción: {self.descripcion}
        Libros disponibles: {self.disponibles}
        Precio: {self.precio}
        Categoria: {self.categoria}
        Imagen: {self.imagen}"""