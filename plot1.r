a2=read.table('1.txt',header=T,sep=';',skip=65000,nrows=5000)
a1=rbind(a2[a2[1]=='1/2/2007' , ],a2[a2[1]=='2/2/2007' , ])
#plot the graph
hist(a1[,3],col='green',main='global active power',xlab='global active power(kilowats')