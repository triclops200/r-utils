viewhist <- function(data,brks,bg,col,title,xlab,ylab){
	opar=par()
	par(bg=bg)
	hist(data, breaks=brks, xaxt='n',main=title,xlab=xlab,ylab=ylab,col=col,add=FALSE)
	rect(par("usr")[1], 0, par("usr")[2], par("usr")[4], col= "white")
	hist(data, breaks=brks, xaxt='n',main=title,xlab=xlab,ylab=ylab,col=col,add=TRUE)
	axis(side=1,brks,labels=brks,pos=0)
	par(opar)
}
