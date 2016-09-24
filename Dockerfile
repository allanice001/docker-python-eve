FROM alpine:3.2

RUN apk add --update musl python3 py-pip eve wget && \
    rm /var/cache/apk/*

EXPOSE 5000 80 81
COPY ./app /app
CMD ["python", "/app/run.py"]