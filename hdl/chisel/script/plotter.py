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

approx_id = content.pop(0).strip()

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

plt_sig.plot(x_real, y_sigmoid, color='green', marker=',', label='$\sigma(x)$')
plt_sig.scatter(x_discrete, y_ufsdiscrete, color='blue', marker='.', s=30, label=approx_id.split(' ')[0])
plt_sig.set_ylabel('Sigmoid Output', color='blue', fontsize=10)
plt_sig.legend()
plt.title(approx_id)

plt_err = plt_sig.twinx()
plt_err.plot(x_discrete, y_dis_err, color='red', marker=',')
plt_err.set_ylabel('Approximation Error', color='red', fontsize=10)

plt.show()

