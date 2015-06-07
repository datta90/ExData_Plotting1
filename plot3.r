
a2=read.table('1.txt',header=T,sep=';',skip=66630,nrows=3000)
a1=rbind(a2[a2[1]=='1/2/2007' , ],a2[a2[1]=='2/2/2007' , ])
z=c(a1[,7],a1[,8],a1[,9])
z1=rep(c(1,2,3),each=2880)

ene=as.data.frame(cbind(z,z1))



with(ene,plot(z,main='energy sub',type='n',xlim=c(0,3000),ylab='energy meter'))
 with(subset(ene,z1==1),points(z,type='l',col='blue'))
 with(subset(ene,z1==2),points(z,type='l',col='red'))
 with(subset(ene,z1==3),points(z,type='l',col='black'))
legend('topright',legend=c('sub_meter1','sub_meter2','sub_meter3'),col=c('blue','red','black'),lty=1)
dev.copy(png,file='plot3.png',width=480,height=480)
dev.off()

