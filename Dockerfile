FROM python:3.8-slim

RUN apt-get update && apt-get install -y \
  python3-pip \
  python3-dev \
  build-essential \
  libffi-dev \
  libssl-dev \
  git \
  curl

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

WORKDIR /app
COPY . .
RUN chmod +x start
CMD ["bash", "start"]
