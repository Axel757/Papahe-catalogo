from django.db import models

# Create your models here.
class ProductMed(models.Model):
    nombre = models.CharField(max_length=100)
    imagen = models.ImageField(upload_to='static/img/Papahe/productos_medicinales/')
    farmacia = models.CharField(max_length=30)
    
    posologia = models.CharField(max_length=50)
    presentacion = models.CharField(max_length=25)
    ingredientes = models.CharField(max_length=256)
    descripcion = models.TextField()
    CATEGORIA_CHOICES = (
        ('BAJAR DE PESO', 'Bajar de Peso'),
        ('RESFRIADO', 'Resfriado'),
        ('INFECCION URINARIA', 'Infección Urinaria'),
        ('MULTIVITAMÍNICO', 'Multivitamínico'),
        ('ENERGIZANTES', 'Energizantes'),
        ('COLON', 'Colon'),
        ('GÁSTRICOS', 'Gástricos'),
        ('ESTREÑIMIENTO', 'Estreñimiento'),
        ('TRANQUILIZANTES', 'Tranquilizantes'),
        ('INSOMNIO', 'Insomnio'),
        ('REUMÁTICOS', 'Reumáticos'),
        ('ÓSEOS', 'Óseos'),
        ('REGENERADORES', 'Regeneradores'),
        ('LIMPIADORES ORGÁNICOS', 'Limpiadores Orgánicos'),
        ('RENAL', 'Renal'),
        ('HEPATOPROTECTORES', 'Hepatoprotectores'),
        ('CORESTEROL Y TRIGLICÉRIDOS', 'Colesterol y Triglicéridos'),
        ('CONCENTRACIÓN', 'Concentración'),
        ('MEJORADORES DE LA CIRCULACIÓN', 'Mejoradores de la Circulación'),
        ('HIPERTENSIÓN', 'Hipertensión'),
        ('DIABETES', 'Diabetes'),
        ('SALUD FEMENINA', 'Salud Femenina'),
        ('SALUD MASCULINA', 'Salud Masculina'),
        ('PRODUCTOS NATURALES', 'Productos Naturales'),
        ('SHAMPOO Y ACONDICIONADORES', 'Shampoo y Acondicionadores'),
        ('LOCIONES', 'Lociones'),
        ('', 'Sin Categoría'),  
        )

    categoria = models.CharField(
        max_length=50,
        choices=CATEGORIA_CHOICES,
        default='',  
    )

    def __str__(self):
        return self.nombre
    class Meta:
        ordering = ['categoria', 'nombre']
        
        
        
class ProductGas(models.Model):
    nombre = models.TextField(max_length=100)
    imagen = models.ImageField(upload_to='static/img/Papahe/productos_gastronomicos/')
    precio = models.IntegerField()
    descripcion = models.TextField() 

    def __str__(self):
        return self.nombre

class Catalogo(models.Model):
    productMed = models.ForeignKey(ProductMed, on_delete=models.CASCADE)
    productGas = models.ForeignKey(ProductGas, on_delete=models.CASCADE)
    catalogoType = models.BooleanField(default=False)