#bai 3
require(BSDA)
zsum.test(mean.x=169,sigma.x = 10,n.x=35,conf.level=0.99)
k=qnorm(1-0.01/2,0,1)
n=(k*10/3)**2