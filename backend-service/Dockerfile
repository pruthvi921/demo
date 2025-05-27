FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    LOGGING_LEVEL=INFO \
    COUNT_VALUE=0 \
    USER_NAME=default

WORKDIR /app

RUN apt-get update && apt-get install -y build-essential && apt-get clean

COPY backend-service/pyproject.toml .

RUN pip install --no-cache-dir --upgrade pip setuptools wheel

RUN pip install --no-cache-dir .

COPY backend-service .

EXPOSE 5000

CMD ["python", "-m", "src.api.start_api"]
