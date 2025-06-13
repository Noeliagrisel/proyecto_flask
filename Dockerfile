# Imagen base de Python
FROM python:3.10-slim

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto donde corre Flask
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]
