# 1️⃣ OpenJDK 17 ile Ubuntu tabanlı bir image kullan
FROM openjdk:17-jdk-slim

# 2️⃣ Yazar bilgisi (Opsiyonel)
LABEL authors="irem"

# 3️⃣ Çalışma dizinini oluştur
WORKDIR /app

EXPOSE 8081

# 4️⃣ JAR dosyanı container içine kopyala (Önce mvn package ile build edilmeli)
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# 5️⃣ Uygulamayı başlat
ENTRYPOINT ["java", "-jar", "app.jar"]
