FROM ubuntu:26.04@sha256:513c074113a871b51a8d16ab445c88779d6452d937a164fb5cc479f32668a41d

RUN apt-get update -y
RUN apt install python-pip python-dev python-setuptools -y
RUN pip install eve

EXPOSE 5000 80 81
COPY ./app /app
CMD ["python", "/app/run.py"]