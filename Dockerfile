# Utiliser une image de base avec Java
FROM openjdk:17-jdk-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier JAR de votre application dans le conteneur
COPY target/eureka-server-0.0.1-SNAPSHOT.jar app.jar

# Exposer le port sur lequel votre application écoutera
EXPOSE 9097

# Démarrer l'application
ENTRYPOINT ["java", "-jar", "app.jar"]