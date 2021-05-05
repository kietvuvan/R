

#bai1:


z.test(r,sigma.x=20)
require(BSDA)
?z.test
set.seed(26)
r=rnorm(26,mean=997,sd=5)
summary(r)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
z.test(r,sigma.x = 20)
z.test(r,sigma.x = 20,conf.level = 0.99)
zsum.test(mean.x = 997,sigma.x = 20,n.x = 16,conf.level = 0.90,alternative = "two.sided")
?zsum.test
?nsize
n = nsize(b = 5, sigma = 20, conf.level = 0.95, type = "mu")
k=nsize(b=.15, sigma=.31, conf.level=.90, type="mu")
