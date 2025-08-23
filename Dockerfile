
FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

RUN useradd -m appuser
WORKDIR /app

COPY app.py /app/
COPY test_app.py /app/

RUN pip install --no-cache-dir pytest

RUN appuser

CMD ["python", "app.py"]

