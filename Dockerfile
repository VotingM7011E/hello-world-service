FROM python:3.13.7-alpine

WORKDIR /app

COPY ./app/requirements.txt /app
RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt

COPY ./app/src /app
CMD ["python3", "app.py"]
