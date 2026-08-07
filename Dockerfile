FROM ubuntu:22.04@sha256:3b06811b2afd352be909dd088a004166d665dc76d38b13eada33522a9d915c6f

RUN apt-get update -y
RUN apt install python-pip python-dev python-setuptools -y
RUN pip install eve

EXPOSE 5000 80 81
COPY ./app /app
CMD ["python", "/app/run.py"]