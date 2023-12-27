FROM python:3.11

RUN [ "pip", "install", "requests" ]

VOLUME [ "/favicons" ]

COPY app.py /src/app.py

ARG FAVICON_URL="https://google.com"

ENV FAVICON_URL ${FAVICON_URL}

CMD python /src/app.py ${FAVICON_URL}
