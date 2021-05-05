x=c(rep(0,10),rep(1,15),rep(2,26),rep(3,31),rep(4,15),rep(5,3))

freq=10+15+26+31+15+3
freq
total=(1*15+2*26+3*31+4*15+5*3)
total
lamda=total/freq
lamda

PX <- c(dpois(0:4, 2.35), ppois(4, 2.35, lower = FALSE))
print(sum(PX))
# lamda=2.35
EX <-freq*PX
OB <- c(as.vector(xtabs(~x)[1:6]))
OB

chisq.test(x = OB, p = PX)
