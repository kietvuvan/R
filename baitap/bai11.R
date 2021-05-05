x=c(rep(22,3),rep(24,5),rep(25,6),rep(29,5),rep(32,4),rep(33,2))
t.test(x,mu=26,alt='g')
'chua du can cu >26'
binom.confint(40,100,methods = "asymptotic")
prop.test(x = 40, n = 100, conf.level = 0.95)