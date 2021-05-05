require(BSDA)


'''
H0:μ=μ0,H1:μ<μ0
p-value = 0.131 > 0.05, mean = 45850 --> không đủ cơ sở để bác bỏ H0
Kết luận: chưa thể kết luận lương trung bình nhỏ hơn 48000, không có ý nghĩa thông kê
'''
mean_x <- 48000

n <- 12
mean <- 45850
sd <- 6300
alpha <- 0.05
tsum.test(mean.x = mean, s.x = sd, n.x = n, mu = 48000, alternative = "less", conf.level = 0.95)