x=c(65,68,62,74,79,76,64,72,65,83,82,84,69,71,67,72,69,69,68,73,75,78,78,75,75,75,78,70,69,65,78,82,80,76,77,75)
gionglua=c(rep("A",12),rep("B",12),rep("C",12))
phanbon=c(rep("X1",3),rep("X2",3),rep("X3",3),rep("X4",3),rep("X1",3),rep("X2",3),rep("X3",3),rep("X4",3),rep("X1",3),rep("X2",3),rep("X3",3),rep("X4",3))
dat=data.frame(x,gionglua,phanbon)
summary(aov(x~gionglua*phanbon))

