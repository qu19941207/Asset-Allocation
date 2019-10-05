import numpy as np
from pandas import *
from matplotlib.pyplot import *
from dateutil.parser import parse

def format(x):
    return np.array([ [parse(x[i, 0]), x[i, 1]] for i in range(len(x)) ])

cny = format(read_excel("/mnt/c/Users/dong1/Desktop/AUDCNY.xlsx").to_numpy())
usd = format(read_excel("/mnt/c/Users/dong1/Desktop/AUDUSD.xlsx").to_numpy())
jpy = format(read_excel("/mnt/c/Users/dong1/Desktop/AUDJPY.xlsx").to_numpy())
hkd = format(read_excel("/mnt/c/Users/dong1/Desktop/AUDHKD.xlsx").to_numpy())

fig, axs = subplots(2,2, figsize=(24,13.5))
fig.suptitle('Currency Exchange Rate')
#tight_layout()
axs[0,0].plot(cny[:,0], cny[:,1])
axs[0,0].set_title('AUD/CNY')
axs[0,0].set_xlabel('Year')
axs[0,0].set_ylabel('Exchange Rate')

axs[0,1].plot(usd[:,0], usd[:,1])
axs[0,1].set_title('AUD/USD')
axs[0,1].set_xlabel('Year')
axs[0,1].set_ylabel('Exchange Rate')

axs[1,0].plot(jpy[:,0], jpy[:,1])
axs[1,0].set_title('AUD/JPY')
axs[1,0].set_xlabel('Year')
axs[1,0].set_ylabel('Exchange Rate')

axs[1,1].plot(hkd[:,0], hkd[:,1])
axs[1,1].set_title('AUD/HKD')
axs[1,1].set_xlabel('Year')
axs[1,1].set_ylabel('Exchange Rate')

show()
fig.savefig("/mnt/c/Users/dong1/Desktop/汇率图.pdf",overwirite=True, bbox_inches = 'tight', pad_inches = 0)