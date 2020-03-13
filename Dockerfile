FROM ubuntu:18.04
FROM python:3.7 
ADD . /app
WORKDIR /app
RUN pip install --target=/app gensim
ENV PYTHONPATH /app
RUN chmod +x /app/main.py
RUN echo $INPUT_PATH
CMD echo $INPUT_PATH
