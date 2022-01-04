FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y python && \
    apt-get install -y python3-pip
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt --no-cache-dir
ADD main.py /home/main.py
CMD ["/home/main.py"]
ENTRYPOINT ["python3"]

