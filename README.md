# MandelbrotZoom
Mandelbrot set visualization zooming

```
$: mkdir frames
$: R
 > zoom_fractal()
 [1] "Frame 00001"
 [2] "Frame 00002"
 ...

 > q()
$  ffmpeg -i frames/m%05d.png -r 24 mandelbrot.gif
```
