FROM python:alpine3.14 as builder

WORKDIR /app

COPY src .

RUN python -m venv venv
RUN source venv/bin/activate
RUN pip install -r requirements.txt

COPY ["assets/entrypoint.sh", "entrypoint.sh"]
CMD ["/bin/sh", "/app/entrypoint.sh"]

EXPOSE 5000