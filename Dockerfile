FROM python:latest
ENV PYTHONUNBUFFERED=1
RUN pip install -r https://raw.githubusercontent.com/ULTRA-OP/ULTRA-X/main/requirements.txt
COPY . .
RUN git clone https://github.com/ULTRA-OP/ULTRA-X /root/ULTRA-X
WORKDIR /root/ULTRA-X
CMD ["python3","-m","ULTRA"]
