# -*- coding: utf-8 -*-
"""
====================================================================
Author:        Lucas Mandl
Company:       FH Joanneum
Date:          10.10.2020
Description:   Implementation of laboratory session 3 - P.5 magnification of
               a picture in python 
====================================================================
"""

#import random as rand
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.image as mpimg

# clear command line and workspace:
try:
    from IPython import get_ipython
    get_ipython().magic('clear')
    get_ipython().magic('reset -f')
except:
    pass

# load image
img = mpimg.imread("python.png")

# read dimensions of array (3D - Array)
h, w, ch = img.shape

# make new array filled with zeros
sh = (2*h ,2*w ,ch)
img_resized = np.zeros(4*h*w*ch).reshape(*sh)

# plot original image
plt.figure(0)
plt.imshow(img)

idx = 0
i = 1
j = 0

for idx in range(0,4): # iterate over channels
    for index_ver in range(h-1): # interate over vertical indicess
        j = 0
        for index_hor in range(w-1): # iterate over hirzintal indicess
            # horizontal pixels:
            if j == 0: # copy border pixels
                img_resized[i-1,j,idx]   = img[index_ver,index_hor,idx]
                img_resized[i-1,j+1,idx] = img[index_ver,index_hor,idx]
            elif j%2 == 0: # new pixels = median between two original pixels
                img_resized[i-1,j,idx]   = (img[index_ver,index_hor-1,idx] + img[index_ver,index_hor,idx]  )/2 
                img_resized[i-1,j+1,idx] = (img[index_ver,index_hor,idx]   + img[index_ver,index_hor+1,idx])/2
            elif j == w*2: # copy border pixels
                img_resized[i-1,j-1,idx] = img[index_ver,index_hor,idx]

            j += 2
        
        # vertical pixels (same procedure as horizontal)
        if i == 1:
            img_resized[i,:,idx] = img_resized[i-1,:,idx]
        elif i%2 == 1:
            img_resized[i,:,idx] = (img_resized[i-1,:,idx] + img_resized[i+1,:,idx])/2
        elif i == h*2:
            img_resized[i,:,idx] = img_resized[i+1,:,idx]
        i += 2
        
        if i > h*2 - 2:
            i = 1

# show resized picture
img_resized[:,:,3][:,:] = 1
plt.figure(1)
plt.imshow(img_resized)
plt.show()