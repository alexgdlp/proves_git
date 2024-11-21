
library(usethis)

use_git()
use_github()

print("Hello World")

print("Prova push")

print("Prova push2")

# Mandelbrot set
mandelbrot <- function(x0, c, times){
  
  res <- c()
  x <- x0
  res[1] <- x0
  for(t in seq_len(times)[-1]){
    
    res[t] <- (x^2)+c
    x <- res[t]
    
    # Convergence?
    if(is.infinite(x)) {break} # Non-convergence
    if(x==res[t-1])    {break} # Convergence
    
  }
  return(res)
}

# Check
mandelbrot(x0=0.9, c=0.2, times=100)
