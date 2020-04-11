# Mandelbrot.R
# Myles Harrison
# everydayanaltics.ca
# -------------------

mandelbrot <- function(xmin=-2.0, xmax=1.0, nx=500,
                       ymin=-1.5, ymax=1.5, ny=500,
                       n=100, showplot=TRUE, f_name="image.png",
                       cols=colorRampPalette(c("white","yellow","red","black"))(11)) 
{
  
  # variables
  x <- seq(xmin, xmax, length.out=nx)
  y <- seq(ymin, ymax, length.out=ny)
  c <- outer(x,y*1i,FUN="+")
  z <- matrix(0.0, nrow=length(x), ncol=length(y))
  k <- matrix(0.0, nrow=length(x), ncol=length(y))
  
  for (rep in 1:n) { 
    index <- which(Mod(z) < 2)
    z[index] <- z[index]^2 + c[index]
    k[index] <- k[index] + 1
  }
  
  if (showplot==TRUE) 
      { 
          png(file=f_name)
          par(mar=c(2,2,0,0))
          image(x,y,k,col=cols)
          dev.off()
      }
  
  return(k)
  
}

