Interactive Plot from Shiny: Jake & Jeremiah
The Iris data set is good for an interactive plot from shiny because there is a feature called class which has 3 different species of plants, and each species has a 
different mean in petal length and width. You can scroll through the species to see how the petal length and width changes. 




library(plotly)
library(ggplot2)
library(gapminder)

df <- read.csv("C:\\Users\\Jake\\Downloads\\iris.data")
head(df)

colnames(df) <- c("Petal_Width", "Petal_Length", "Sepal_Width", "Sepal_Length", "Flower_Type")
head(df)

Flower_Size_by_Species <- "Flower_Size_by_Species"

p = ggplot( df, aes(title = Flower_Size_by_Species, x = Petal_Width, y = Petal_Length,text = Flower_Type, color = Flower_Type) ) + geom_point(aes(frame = Flower_Type, ids = Sepal_Length))

ggplotly(p)





Connected Line Plot: Jake
The connected line plot is a basic line with points from the car dataset. 


library(ggplot2)

data("cars")

ggplot(data = cars, aes(x = speed, y = dist)) + geom_point() + geom_abline(aes(intercept = 0, slope = 3))





Pie Chart with Labels: Jeremiah
Atmospheric gas makes a good pie chart with labels because you can visualize the different types of gasses easily. 



install.packages("plotly")
library(plotly)

labels = c('Oxygen','Nitrogen', 'Trace Gasses')
values = c(20.95, 78.08, 0.97 )

fig <- plot_ly(type='pie', labels=labels, values=values,
               textinfo='label+percent',
               insidetextorientation='radial')%>%
  layout(title = 'Atmospheric Gas Makeup')
fig



