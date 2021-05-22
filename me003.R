
rm (list = ls())
library(car)
mydata <- read.csv("C:/Users/MIKID/Documents/P3_ME003_1849417.csv")
colnames(mydata)<- c("Y","x1","x2","x3","x4")
modelo <- lm(Y ~ x1 + x2 +x3+x4, data=mydata)

summary(modelo) 
coefficients(modelo)
confint(modelo,level=0.95)
fitted(modelo)  
residuals(modelo) 
anova(modelo) 

car::vif(modelo)

