FROM python:3.8-slim

RUN apt-get update && apt-get install -y \
  python3-pip \
  python3-dev \
  build-essential \
  libffi-dev \
  libssl-dev \
  git \
  curl

WORKDIR /app
COPY . .

RUN pip3 install -r requirements.txt

CMD ["python3", "-m", "userbot"]
