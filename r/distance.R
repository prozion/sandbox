#!/usr/bin/env Rscript

dist <- function(lat1, lon1, lat2, lon2) {
  R = 6371
  phi1 = lat1 * pi / 180
  phi2 = lat2 * pi / 180
  dphi = (lat2 - lat1) * pi / 180
  dlambda = (lon2 - lon1) * pi / 180
  a = sin(dphi/2)^2 + cos(phi1)*cos(phi2)*sin(dlambda/2)^2
  # print(sprintf("%f %f %f", sin(dphi/2)^2, cos(phi1)*cos(phi2), sin(dlambda/2)^2))
  c = 2*atan2(sqrt(a),sqrt(1-a))
  R * c
}

dist(50, 50, 51, 51) # should be 132
