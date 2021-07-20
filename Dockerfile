FROM python:latest

RUN pip3 install streamlit joblib sklearn

WORKDIR /app
COPY lrm.py /app/app.py
COPY data/Linear_regression_dataset.csv /app/data/Linear_regression_dataset.csv
COPY model/.keep /app/model/.keep

CMD ["python3", "/app/app.py"]