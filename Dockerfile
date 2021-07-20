FROM python:latest

RUN pip3 install streamlit joblib sklearn

EXPOSE 8501:8501
WORKDIR /app
COPY lrm.py /app/app.py