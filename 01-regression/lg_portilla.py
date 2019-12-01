import pandas as pd
import numpy  as np

import matplotlib.pyplot as plt
import seaborn as sns


df = pd.read_csv("Clean-USA-Housing.csv")

print(df.head())

print(df.info())

print(df.describe())

print(df.columns)

g = sns.pairplot(df)

g.map(plt.scatter)