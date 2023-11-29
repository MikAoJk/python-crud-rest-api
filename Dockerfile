FROM python:3.11-slim

WORKDIR /app

RUN pip install poetry
ENV POETRY_VIRTUALENVS_IN_PROJECT=true

COPY pyproject.toml poetry.lock ./
RUN poetry install --only main --no-root --no-interaction

ENV PATH="/bin:/usr/bin:/usr/local/bin:/app/.venv/bin"

CMD ["/app/.venv/bin/pyrhon-crud-rest-api"]
