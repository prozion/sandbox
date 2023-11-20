#!/usr/bin/env Rscript

library(tidyverse)
library(palmerpenguins)
library(ggthemes)

library(tcltk)

# png("result.png")
X11()

spiral <- function(alpha) {
  0.3*sqrt(alpha)
}

a <- seq(0, 100, 0.1)
r <- spiral(a)

# ggplot(aes(x = r * sin(a), y = r * cos(a))) + geom_plot()
plot(x = r * sin(a), y = r * cos(a), type = "l")

# dev.off()
tk_messageBox(message = "Click to close the window")
