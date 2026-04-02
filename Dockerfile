FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir django gunicorn

EXPOSE 8000

CMD ["gunicorn", "deployee.wsgi:application", "--bind", "0.0.0.0:8000"]