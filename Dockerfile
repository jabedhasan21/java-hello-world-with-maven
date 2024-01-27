FROM python
WORKDIR /app
RUN pip install flask
COPY main.py .
EXPOSE 5000
ENTRYPOINT ["python", "main.py"]