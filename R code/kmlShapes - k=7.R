library(kmlShape)

mydata <- read.csv("less.csv", header=TRUE)

mydata


myClds <- cldsLong(mydata)

plotTraj(myClds)

reduceTraj(myClds,nbSenators=49,nbTimes=7)
### Clustering using shape
kmlShape(myClds,7)
plotMeans(myClds)

c3.49 <- myClds@clusters
write.csv(c3.49, file='kml-07-normed.csv')
