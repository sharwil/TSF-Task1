datas=student_scores

pairs(datas)
View(datas)

linearMod<-lm(Scores~Hours,data = datas)
summary(linearMod)

scatter.smooth(x=datas$Hours,y=datas$Scores,main="Linear Model")

pred=predict(linearMod,data.frame(Hours=9.25))
pred
