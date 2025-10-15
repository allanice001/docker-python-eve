FROM ubuntu:24.04@sha256:66460d557b25769b102175144d538d88219c077c678a49af4afca6fbfc1b5252

RUN apt-get update -y
RUN apt install python-pip python-dev python-setuptools -y
RUN pip install eve

EXPOSE 5000 80 81
COPY ./app /app
CMD ["python", "/app/run.py"]