x=c(rep(0.8,4),rep(0.9,2),rep(1.0,5),rep(1.1,3),rep(1.2,2))
hist((x))
t.test(x,alt="l")
?t.test
#binom.confint(26,100,methods = "asymptotic")
prop.test(x = 26, n = 100, conf.level = 0.95)$conf