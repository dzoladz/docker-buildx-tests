FROM ubuntu:20.04

LABEL author.name="Derek Zoladz"
LABEL author.email="derek@derekzoladz.com"

RUN apt-get update -y && apt-get install -y \
    python3 \
    python3-pip

COPY . /app
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app
RUN pip3 install -r requirements.txt

# Flask runs on port 5000 by default
# http://localhost:5000
EXPOSE 5000

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]