FROM ubuntu

WORKDIR /app

COPY requirements.txt /app
COPY . /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get install -y $(cat requirements.txt)
ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
