FROM ubuntu:24.04@sha256:d1e2e92c075e5ca139d51a140fff46f84315c0fdce203eab2807c7e495eff4f9

RUN apt-get update -y
RUN apt install python-pip python-dev python-setuptools -y
RUN pip install eve

EXPOSE 5000 80 81
COPY ./app /app
CMD ["python", "/app/run.py"]