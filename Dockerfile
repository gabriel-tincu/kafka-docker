FROM openjdk:8-alpine
ADD . /app
RUN apk add --update wget
WORKDIR /app
RUN wget http://www-us.apache.org/dist/kafka/0.11.0.1/kafka_2.11-0.11.0.1.tgz
RUN tar xvfz kafka_2.11-0.11.0.1.tgz
WORKDIR /app/kafka_2.11-0.11.0.1
RUN cp /app/server.properties /app/kafka_2.11-0.11.0.1/config/
RUN cp /app/kafka-server-start.sh /app/kafka_2.11-0.11.0.1/bin/kafka-server-start.sh
RUN cp /app/kafka-run-class.sh /app/kafka_2.11-0.11.0.1/bin/kafka-run-class.sh
RUN chmod +x /app/kafka_2.11-0.11.0.1/bin/kafka-server-start.sh
WORKDIR /app/kafka_2.11-0.11.0.1/
RUN cp /app/run-kafka.sh .
ENTRYPOINT ./run-kafka.sh
