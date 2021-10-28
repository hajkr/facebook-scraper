FROM python:3.9.7

ENV APP_HOME=/app

WORKDIR $APP_HOME

RUN mkdir -p $APP_HOME

RUN apt-get update && apt-get install build-essential bash cmake pkg-config -y

# Poetry
RUN pip install --no-cache-dir 'poetry==1.1.5'
RUN poetry run pip install 'setuptools==57.5.0'

# Install python libraries
COPY pyproject.toml $APP_HOME/
COPY poetry.lock $APP_HOME/
RUN poetry install --no-root

COPY . $APP_HOME/
