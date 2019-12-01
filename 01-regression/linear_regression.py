
import numpy as np
import matplotlib.pyplot as plt


X = []
Y = []
for line in open("data_1d.csv"):
  x,y = line.split(",")
  X.append(float(x))
  Y.append(float(y))

X = np.array(X)
Y = np.array(Y)

plt.scatter(X,Y)
plt.show()

