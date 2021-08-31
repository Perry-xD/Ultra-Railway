FROM paman7647/amanpandey:speedo-buster-3.9
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg git
RUN pip install -r https://raw.githubusercontent.com/ULTRA-OP/ULTRA-X/main/requirements.txt
COPY . .
COPY ./Ultra.sh .
ADD ./Ultra.sh .
CMD ["bash","Ultra.sh"]
