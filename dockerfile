FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y python3-pip python-dev build-essential

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

ENV FLASK_APP=pybo
ENV FLASK_ENV=development

ENTRYPOINT ["python3"]

CMD ["pybo.py"]