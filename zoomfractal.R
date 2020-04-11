# zoomfractal.R
# Paulo Fernandez
# ---------------

zoom_fractal <- function(x_range=c(-2.0,1.0),
                         y_range=c(-1.5,1.5),
                         zoom_point=c(-0.5, 0.5198958),
                         zoom=0.1, frames=10, from_frame=0)
{
  for (f in 1:frames) {

    if (f > from_frame) {
      print(sprintf("Frame %05d",f))
      mandelbrot(xmin=x_range[1],xmax=x_range[2],
                 ymin=y_range[1],ymax=y_range[2],
                 f_name=sprintf("frames/m%05d.png",f))
    }
    
    x_range <- (1-zoom)*x_range + zoom*zoom_point[1]
    y_range <- (1-zoom)*y_range + zoom*zoom_point[2]
    
  }
}

