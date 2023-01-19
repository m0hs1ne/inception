FROM alpine:3.16

RUN	apk update && apk upgrade && apk add --no-cache wget

RUN wget https://github.com/google/cadvisor/releases/download/v0.47.0/cadvisor-v0.47.0-linux-amd64 && \
    mv cadvisor-v0.47.0-linux-amd64 cadvisor && \
    chmod +x cadvisor

EXPOSE 8080

CMD ["./cadvisor"]