FROM openjdk:8-jdk-alpine
# Environment Variable that defines the endpoint of sentiment-analysis python api.
ENV SA_LOGIC_API_URL http://localhost:5000
EXPOSE 8080
WORKDIR /usr/app
CMD ["java", "-jar", "/usr/app/spring-petclinic-2.7.0.jar", "--sa.logic.api.url=${SA_LOGIC_API_URL}"]
COPY target/spring-petclinic-2.7.0.jar /usr/app
