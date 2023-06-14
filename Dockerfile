FROM alpine:3.18.0

RUN apk update \
&& apk add py-pip \
&& apk add curl

WORKDIR /app

COPY app.py /app/app.py
COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt
EXPOSE 9555
CMD ["python","app.py"]
HEALTHCHECK CMD curl --fail http://localhost:9555 || exit 1