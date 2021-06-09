FROM python:3.9-slim

RUN apt-get update && apt-get install -y curl
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

# COPY ./static /app/static
# COPY ./templates /app/templates
# COPY app.py app.py

COPY . .

EXPOSE 80

CMD ["gunicorn", "app:app", "-b", "0.0.0.0:80", "--log-file", "-", "--access-logfile", "-", "--workers", "4", "--keep-alive", "0"]