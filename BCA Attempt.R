library(ggplot2)
ggplot(data=BCA_Example_Test_Data)
protein_conc<-c(2000,1500,1000,750,500,250,125,0)
avg_abs<-BCA_Example_Test_Data$'1'
#plot absorbance against concentration
plot(avg_abs~protein_conc,col="blue")
#linear regression
lm(avg_abs~protein_conc)
abline(-0.0050407,0.0002807)
#Improve the graph 
plot(avg_abs~protein_conc,
     xlab="[Protein](micogram/ml)",
     ylab="[Absorbance](570nm)",
     main="BCA Assay October")