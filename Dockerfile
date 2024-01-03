FROM python:3.9.2
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt 
EXPOSE $PORT
CMD ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]

