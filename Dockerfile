FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip
RUN PIP install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask --host=0.0.0.0 --port=8080
