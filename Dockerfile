FROM python:3.9-slim-buster
WORKDIR /app
RUN pip install flask
COPY app.py .
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]