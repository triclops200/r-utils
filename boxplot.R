viewboxplot<- function(data,bg,color,title,xlab,lblpoints){
	opar=par()
	par(bg=bg,pch=21)
	boxplot(data,horizontal=TRUE,xaxt='n')
	v <-par("usr")[3]
	r<-rect(par("usr")[1], v, par("usr")[2], par("usr")[4], col= "white")
	boxplot(data,horizontal=TRUE,add=TRUE,col=color,main=title,xlab=xlab,xaxt='n')
	axis(side=1,at=lblpoints,labels=lblpoints,pos=v);
	par(opar);

}
