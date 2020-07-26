FROM python:3.7-alpine
WORKDIR /code
ARG FLASK_PORT
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
ENV FLASK_RUN_PORT=$FLASK_PORT
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE "$FLASK_RUN_PORT"
COPY . .
CMD ["flask", "run"]