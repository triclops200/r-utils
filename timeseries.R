viewtimeseries <- function(xdata,ydata,lblpoints,bg,col,title,xlab,ylab){
	opar=par()
	par(bg=bg,pch=21)
	plot(xdata,ydata,type='n',main=title,xlab=xlab,ylab=ylab,xaxt='n')
	my=min(ydata,na.rm=TRUE)
	v <-par("usr")[3]
	r<-rect(par("usr")[1], v, par("usr")[2], par("usr")[4], col= "white")
	lines(xdata,ydata,type="l",add=TRUE)
	axis(side=1,at=lblpoints,labels=lblpoints,pos=v-0.03)
	par(opar)
}
