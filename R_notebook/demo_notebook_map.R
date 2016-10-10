install.packages("rmarkdown")
library(rmarkdown)
render("1-example.Rmd")
getwd()
cd('study')
setwd("~/study/R_notebook")
render("1-example.Rmd")
render("1-example.Rmd")
install.packages("viridis")
render("1-example.Rmd")
library(viridis)
image(volcano, col = viridis(200))
image(volcano, col = viridis(200, option = "A"))


install.packages("leaflet")
#install.packages("dplyr")
#install.packages("magrittr")
#library(magrittr)
library(leaflet)
m <- leaflet() %>%
addTiles() %>%  # Add default OpenStreetMap map tiles
addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
m

m <- leaflet() %>%
addTiles() %>%  # Add default OpenStreetMap map tiles
addMarkers(lng=-0.144044, lat=51.515215, popup="The birthplace of R")
m

install.packages("ggmap")
library(ggmap)

lng=-0.144044
lat=51.515215
mapImageData2 <- get_map(location = c(lon = -0.016179, lat = 51.538525),
color = "color",
source = "google",
maptype = "terrain",
zoom = 16)
ggmap(mapImageData2,
extent = "device",
ylab = "Latitude",
xlab = "Longitude")
mapImageData2 <- get_map(location = c(lon = lng, lat = lat),
color = "color",
source = "google",
maptype = "terrain",
zoom = 16)

ggmap(mapImageData2,
extent = "device",
ylab = "Latitude",
xlab = "Longitude")

mapImageData3 <- get_map(location = c(lon = lng, lat = lat),
color = "color",
source = "google",
maptype = "roadmap",
zoom = 16)
ggmap(mapImageData3,
extent = "device",
ylab = "Latitude",
xlab = "Longitude")
gps <- read.csv("elwyn.csv",
header = TRUE)


head(gps)
library(ggmap)
mapImageData <- get_map(location = c(lon = mean(gps$Longitude),
lat = 33.824),
color = "color", # or bw
source = "google",
maptype = "satellite",
# api_key = "your_api_key", # only needed for source = "cloudmade"
zoom = 17)
pathcolor <- "#F8971F"
ggmap(mapImageData,
extent = "device", # "panel" keeps in axes, etc.
ylab = "Latitude",
xlab = "Longitude",
legend = "right") +
geom_path(aes(x = Longitude, # path outline
y = Latitude),
data = gps,
colour = "black",
size = 2) +
geom_path(aes(x = Longitude, # path
y = Latitude),
colour = pathcolor,
data = gps,
size = 1.4)




