FROM ubuntu:20.04

LABEL maintainer="Abrar Yaser <ayaa2021@mymail.pomona.edu>"

RUN apt-get update -y && \
    apt-get install -y python3 python3-pip

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . /app

ENTRYPOINT ["python3"]

CMD ["app.py"]

