FROM python:3.6-slim-stretch

RUN apt-get update \
    && apt-get install -y \
    && apt-get install libgtk2.0-dev -y
ADD requirements.txt /
RUN pip install -r /requirements.txt

ADD . /app
WORKDIR /app


EXPOSE 5000
CMD [ "python" , "app.py"]
