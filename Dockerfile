FROM alpine:3

LABEL maintainer.name="Afonso Rodrigues"
LABEL maintainer.email=afonsoaugustoventura@gmail.com  

ARG SLEEP_TIME
ENV SLEEP_TIME=10

ARG SLEEP_COUNT
ENV SLEEP_COUNT=20

CMD ["sh", "-c", "for i in $(seq 1 $SLEEP_COUNT); do echo \"SLEEP ... $i\"; sleep $SLEEP_TIME; done"]