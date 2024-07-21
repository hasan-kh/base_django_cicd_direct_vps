FROM python:3.11-slim-buster
LABEL authors="Hasan Khodadadi"

ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Copy source code
COPY requirements.txt /app/

# Install requirements
RUN pip3 install -U pip && pip3 install -r requirements.txt

# Copt source code
COPY ./core /app/

# Lint
RUN flake8 core/*.py && pylint --disable=C0415 *.py

EXPOSE 8000

ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0"]