FROM python:latest

ENV APP_HOME=/app

WORKDIR $APP_HOME

RUN mkdir -p $APP_HOME

RUN apt-get update && apt-get install build-essential bash cmake pkg-config -y

# Poetry
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

# Install python libraries
COPY pyproject.toml $APP_HOME/
COPY poetry.lock $APP_HOME/
RUN poetry install

COPY . $APP_HOME/