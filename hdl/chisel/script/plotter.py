#! /usr/local/bin/python3

import matplotlib.pyplot as plt
import numpy as np
import sys

x_discrete = []
y_ufsdiscrete = []

#fileaddr = 'script/ufsres.dat'
fileaddr = sys.argv[1]

with open(fileaddr, 'r') as fp:
    content = fp.readlines()

for line in content:
    [x_fl, y_fl] = line.split(',')
    x_discrete.append(float(x_fl))
    y_ufsdiscrete.append(float(y_fl))

x_discrete = np.array(x_discrete)
y_ufsdiscrete = np.array(y_ufsdiscrete)

x_real    = np.arange(min(x_discrete), max(x_discrete), 0.01)
y_sigmoid = 1/(1 + np.e**(-1 * x_real))

y_dis_err = np.abs(1/(1 + np.e**(-1 * x_discrete)) - y_ufsdiscrete)

fig, plt_sig = plt.subplots()

plt_sig.plot(x_real, y_sigmoid, color='blue')
plt_sig.scatter(x_discrete, y_ufsdiscrete, color='blue', marker='.', s=30)
plt_sig.set_ylabel('sigmoid', color='blue', fontsize=10)

plt_err = plt_sig.twinx()
plt_err.plot(x_discrete, y_dis_err, color='red')
plt_err.set_ylabel('error', color='red', fontsize=10)

plt.show()

