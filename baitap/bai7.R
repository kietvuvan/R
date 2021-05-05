x=c(rep(12928,2),rep(12120,3),rep(14972,5),rep(14004,7),rep(14788,8))
t.test(x,alt='g')
shapiro.test(x)

wilcox.test(x, alternative = "less", mu = 14500, conf.level = 0.95)