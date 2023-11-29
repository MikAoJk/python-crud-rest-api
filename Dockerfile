FROM python:3.11-slim

WORKDIR /app

RUN pip install poetry
ENV POETRY_VIRTUALENVS_IN_PROJECT=true

COPY pyproject.toml poetry.lock ./
RUN poetry install --only main --no-root --no-interaction

COPY pythoncrudrestapi ./pythoncrudrestapi
COPY README.md ./README.md

RUN poetry install --only main --sync --no-interaction

ENV PATH="/bin:/usr/bin:/usr/local/bin:/app/.venv/bin"
EXPOSE 8080

CMD ["/app/.venv/bin/pythoncrudrestapi"]