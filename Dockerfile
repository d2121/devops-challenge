FROM python:3.8-slim

COPY src /app
WORKDIR /app

RUN pip install -r requirements.txt

CMD ["python", "app.py"]
    