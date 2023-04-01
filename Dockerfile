FROM openjdk:17-jdk-slim

# Install dependencies

RUN apt-get update && apt-get install -y \
    curl \
    git \
    maven \
    && rm -rf /var/lib/apt/lists/*

# Build src
COPY . /app
WORKDIR /app

# Build app
RUN ./gradlew build

CMD ./gradlew bootRun
## Run app
#CMD ["java", "-jar", "target/HelloWorld-1.0-SNAPSHOT.jar"]