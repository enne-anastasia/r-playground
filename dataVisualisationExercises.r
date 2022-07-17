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

?mpg

ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ,y=hwy,color=displ<5))

ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ,y=hwy)) +
  facet_wrap(~ class, nrow=2)

ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ,y=hwy)) +
  facet_grid(drv ~ cyl)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = drv, y = cyl))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) +
  geom_point(mapping=aes(x=displ,y=hwy))

ggplot(data = mpg) +
  geom_smooth(mapping=aes(x=displ,y=hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x=displ,y=hwy,linetype=drv))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x=displ,y=hwy,group=drv))

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x=displ,y=hwy,color=drv),show.legend = FALSE)

ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ,y=hwy)) +
  geom_smooth(mapping = aes(x=displ,y=hwy))

ggplot(data = mpg,mapping = aes(x=displ,y=hwy)) +
  geom_point() +
  geom_smooth()

ggplot(data = mpg,mapping = aes(x=displ,y=hwy)) +
  geom_point(mapping = aes(color=class)) +
  geom_smooth()

ggplot(data = mpg,mapping = aes(x=displ,y=hwy)) +
  geom_point(mapping = aes(color=class)) +
  geom_smooth(data=filter(mpg,class == "subcompact"),se=FALSE)
