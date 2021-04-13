require("GLMsData")
data(lime)
names(lime)
'temp=glm(Foliage~.,family=Gamma(link="log"),data=lime)
search=step(temp)
print(search)

anova(lime.log,test="Chisq")
op=par(mfrow=c(2,2))
plot(lime.log)


lime.log <- glm( Foliage ~ Origin * log(DBH), family=Gamma(link="log"),data=lime)
sumarry(lime.log)
 lime.inv <- update(lime.log, family=Gamma(link="inverse"),mustart=fitted(lime.log) )
 lime.id <- update(lime.log, family=Gamma(link="identity"),mustart = fitted(lime.log) )
'
lime.log =glm( Foliage ~ Origin*log(DBH), family=inverse.gaussian(link="log"),data=lime)
lime.inv <- update(lime.log, family=inverse.gaussian(link="inverse") )
lime.inv <- update(lime.log, family=inverse.gaussian(link="inverse"),mustart=fitted(lime.log) )
lime.id <- update(lime.log, family=inverse.gaussian(link="identity"),mustart = fitted(lime.log) )
summarry(lime.log)
'
require("statmod")

## STDIZD RESIDUALS vs FITTED VALUES on constant-info scale
plot(rstandard(lime.log) ~ log(fitted(lime.log)), main="Log link", las=1,xlab="Log of fitted values", ylab="Standardized residuals")
## CHECK LINEAR PREDICTOR

eta.log = lime.log$linear.predictor
plot(resid(lime.log, type="working") + eta.log ~ eta.log, las=1,ylab="Working resid", xlab="Linear predictor, eta")
'
## QQ PLOT OF RESIDUALS
qqnorm( qr1<-qresid(lime.log),las=1 )
qqline( qr1 )
## COOK'S DISTANCE
plot( cooks.distance(lime.log), ylab="Cook's distance", las=1, type="h")
colSums(influence.measures(lime.log)$is.inf)