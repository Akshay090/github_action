FROM ubuntu:18.04
FROM python:3.7 
ADD . /app
WORKDIR /app
RUN pip install --target=/app gensim
ENV PYTHONPATH /app
CMD ["/app/main.py"]
