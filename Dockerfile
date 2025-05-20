# Usa una imagen base de Java
FROM eclipse-temurin:17-jdk-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia el .jar al contenedor
COPY target/veterinaria-0.0.1-SNAPSHOT.jar app.jar

# Puerto para Render
ENV PORT=8080
EXPOSE 8080

# Comando para ejecutar la app
CMD ["java", "-jar", "app.jar"]
