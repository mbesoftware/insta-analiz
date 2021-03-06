FROM python:3.9-alpine
LABEL maintainer="Burak Eyidogan <tuxity@users.noreply.github.com>"

WORKDIR /usr/src/insta-analiz

COPY insta-analiz.py requirements.txt /usr/src/insta-analiz/

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python", "-u", "insta-analiz.py"]
