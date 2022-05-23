FROM python:3.9.2-buster
RUN mkdir /bot && chmod 777 /bot
WORKDIR /bot
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -qq update && apt -qq install -y git ffmpeg
COPY . .
RUN pip3 install -r requirements.txt
CMD ["bash","run.sh"]
