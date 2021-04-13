dat=as.table(matrix(c(141,921,101,964),nrow=2,byrow=TRUE))
library(epiR)
epi.2by2(dat,method="cohort.count",conf.level=0.95)

