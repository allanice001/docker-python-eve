FROM ubuntu:26.04@sha256:6a06111c3b0a8600feadb270aec771dc239bf407b25625f93f44ab00e11f4d3c

RUN apt-get update -y
RUN apt install python-pip python-dev python-setuptools -y
RUN pip install eve

EXPOSE 5000 80 81
COPY ./app /app
CMD ["python", "/app/run.py"]