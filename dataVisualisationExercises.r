library(tidyverse)

#====================
# Do cars with big engines use more fuel than cars with small engines?
#====================

# data frame of observations collected by the US Environmental Protection Agency on 38 models of car
mpg

# displ - car engine size (litres)
# hwy - a car’s fuel efficiency on the highway (miles per gallon)
# class - "type" of car
ggplot(data = mpg) + # creates a coordinate system for dataset mpg
  geom_point(mapping = aes(x=displ,y=hwy,color=class)) # adds a layer of points

ggplot(data = mpg)
nrow(mpg)
ncol(mpg)
?mpg
# hwy - a car’s fuel efficiency on the highway (miles per gallon)
# cyl - number of cylinders
ggplot(data = mpg) +
  geom_point(mapping = aes(x=cyl,y=hwy))
# class - "type" of car
# drv - the type of drive train , where f = front-wheel drive, r = rear wheel drive, 4 = 4wd
ggplot(data = mpg) +
  geom_point(mapping = aes(x=drv,y=class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")
