a2=read.table('1.txt',header=T,sep=';',skip=66630,nrows=3000)
a1=rbind(a2[a2[1]=='1/2/2007' , ],a2[a2[1]=='2/2/2007' , ])



plot(a1[,3],xaxt='n',type='l',ylab='global active power(kilowats)')
axis(1,at=c(1,1500,2500),labels=c('Thu','Fri','Sat'))
dev.copy(png,file='plot2.png',width=480,height=480)
dev.off()
