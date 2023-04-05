install.packages("tidyverse")

library(tidyverse)


mpg
ggplot(data=mpg)+geom_point(mapping = aes(x = displ, y = cty),size=5)
ggplot(data=mpg)+geom_point(mapping = aes(x = displ, y = cty, color = trans),size=5)
ggplot(data=mpg)+geom_point(mapping = aes(x = displ, y = cty, size = year),size=5)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = year),size=5)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = drv),size=5)ggplot(data=mpg,aes(x = displ, y = cty))+geom_count()+geom_smooth(method='lm',se=F)
p <- ggplot(mpg,aes(x = factor(class))) + geom_bar(stat = "count")
p
ggplot(data=mpg, aes(x=hwy)) + geom_histogram(col='red',fill='green',alpha=.5,binwidth = 5)
library(ggplot2)
data(iris)


IrisPlot <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_point(size=2.56)
head(iris)


print(IrisPlot + labs(y="Petal length (cm)", x = "Sepal length (cm)") 
      + ggtitle("Petal and sepal length of iris"))


IrisPlot + annotate("rect", xmin = 5, xmax = 7,ymin = 4, ymax = 6, alpha = 0.5)


IrisPlot + annotate("segment",x=5, xend = 7, y = 4, yend = 5, colour = "black")

ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) +
  geom_point(shape=1,size=3) +
  geom_smooth(method=lm)


df <- as.data.frame(table(iris$Species))
df


pie <- ggplot(df, aes(x="",y =Freq, fill = factor(Var1))) + geom_bar(width = 1, stat = "identity") + theme(axis.line = element_blank(),
                                                                                                           plot.title = element_text(hjust=0.5)) +
  labs(fill="Freq",
       x=NULL,
       y=NULL, 
       title="Pie Chart of Variety of iris Species",
       caption="Source: iris")


pie + coord_polar(theta = "y", start=1) 
