#!/usr/bin/env Rscript

library(tidyverse)
library(palmerpenguins)
library(ggthemes)

library(tcltk)

X11()

# ggplot(
#   data = penguins,
#   mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
#   geom_point(mapping = aes(color = island, shape = species)) +
#   labs(
#     x = "Flipper length (mm)",
#     caption = "Data come from the palmerpenguins package",
#     y = "Body weight (g)",
#     title = "Body mass and flipper length",
#     subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
#     color = "Island",
#     shape = "Species"
#   ) +
#   geom_smooth(method = "lm") +
#   scale_color_colorblind()

# fct_infreq - for sorting
# penguins |> ggplot(aes(x = fct_infreq(species)) + geom_bar()
# penguins |> ggplot(aes(y = fct_infreq(species))) + geom_bar(color = "red", fill = "transparent")

# penguins |> ggplot(aes(x = body_mass_g)) + geom_histogram(bins = 18)

diamonds |> ggplot(aes(x = carat)) + geom_histogram(binwidth = 0.5)

# penguins |> ggplot(aes(x = body_mass_g)) + geom_density()

tk_messageBox(message = "Click to close the window")
