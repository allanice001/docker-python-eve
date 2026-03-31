FROM ubuntu:14.04.5@sha256:30204139c6ab96ebd75d72f34db390f28c4decd5e563488b4e485bf979397b67

RUN apt-get update -y
RUN apt install python-pip python-dev python-setuptools -y
RUN pip install eve

EXPOSE 5000 80 81
COPY ./app /app
CMD ["python", "/app/run.py"]