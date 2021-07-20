import pandas as pd
from sklearn.linear_model import LinearRegression
import joblib

df = pd.read_csv('./data/Linear_regression_dataset.csv', header='infer')

X = df.loc[:,df.columns != 'output']
y = df['output']
lr = LinearRegression().fit(X,y)

joblib.dump(lr, './model/linear_regression_model.pkl')