x=c(rep(0,10),rep(1,41),rep(2,60),rep(3,20),rep(4,6),rep(5,3))
PX <- c(dbinom(0:4, 5, 0.4), pbinom(4, 5, 0.4, lower = FALSE))
print(sum(PX))
EX <-140*PX
print(EX)
OB <- c(as.vector(xtabs(~x)[1:6]))
print(OB)
chisq.test(x = OB, p = PX)
?prop.test
