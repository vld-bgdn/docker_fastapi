# Use following command to run app after build image:
# docker run -d -p 8000:8000 docker_fastapi

FROM python:3.11-slim AS builder

WORKDIR /app
COPY poetry.lock pyproject.toml README.md ./

RUN python -m pip install --no-cache-dir poetry \
    && poetry config virtualenvs.in-project true \
    && poetry install --no-interaction --no-ansi

FROM python:3.11-slim

COPY --from=builder /app /app
COPY app.py ./

EXPOSE 8000

CMD ["/app/.venv/bin/uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
