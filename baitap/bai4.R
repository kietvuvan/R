dat=c(rep(170,3),rep(180,4),rep(190,5),rep(200,7),rep(210,8),rep(220,5),rep(230,3))

alpha = 0.95
n = 35

z.test(dat, sigma.x = sd(dat), alternative = "two.sided", conf.level = alpha)
#
CI = z.test(dat, sigma.x = sd(dat), alternative = "two.sided", conf.level = alpha)$conf
saiso <- (CI[2] - CI[1])/2

###
epsilon = 10
n = 35
sigma = sd(dat)

alpha = pt(epsilon*sqrt(n)/sigma, n - 1)
alpha = 1 - 2*(1-alpha)
alpha
##