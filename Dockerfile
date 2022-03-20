FROM python:3.9.11-alpine3.14

RUN apk add --no-cache bash python3-dev gcc libc-dev

ADD requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
