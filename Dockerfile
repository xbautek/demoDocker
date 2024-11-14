# Kontener z mavenem, który umożliwi zbudowanie aplikacji
FROM maven:3.8.8-eclipse-temurin-17 AS build

# Ustawianie workdira w kontenerze
WORKDIR /app

# Kopiowanie poma i plików projektu do kontenera
COPY pom.xml .
COPY src ./src

# Budowanie aplikacji (dla naszych celów możemy pominąć testy)
RUN mvn clean package -DskipTests
