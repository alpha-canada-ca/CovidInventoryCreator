FROM openjdk:8
RUN mkdir -p /app
COPY initialdata/ /app/initialdata/
COPY secrets/ /app/secrets/
COPY tokens/ /app/tokens/
ADD target/InventoryCreator-1.0.0-SNAPSHOT-jar-with-dependencies.jar /app/app.jar
WORKDIR /app/
ENTRYPOINT ["java","-jar","app.jar"]

