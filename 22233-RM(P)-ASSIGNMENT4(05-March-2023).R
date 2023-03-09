#Name: K Sai mathura krishnan Roll no : 22233 Assigment 4
#R language is mostly used for statistics and data analytics purposes to 
#represent the data graphically in the software. 
#To represent those data graphically, charts and graphs are used in R. 

#R ??? graphs
#There are hundreds of charts and graphs present in 
#R. For example, bar plot, box plot, mosaic plot, dot chart, coplot, histogram, pie chart, scatter graph, etc. 

#Types of R ??? Charts
#Bar Plot or Bar Chart
#Pie Diagram or Pie Chart
#Histogram
#Scatter Plot
#Box Plot


# defining vector
x <- c(7, 15, 23, 12, 44, 56, 32)

# output to be present as PNG file
png(file = "barplot.png")

# plotting vector
barplot(x, xlab = "barplot",
        ylab = "Count", col = "white",
        col.axis = "darkgreen",
        col.lab = "darkgreen")
dev.off()

#Pie

# defining vector x with number of articles
x <- c(210, 450, 250, 100, 50, 90)

# defining labels for each value in x
names(x) <- c("Algo", "DS", "Java", "C", "C++", "Python")

# output to be present as PNG file
png(file = "piechart.png")

# creating pie chart
pie(x, labels = names(x), col = "white",
    main = "Intrests", radius = -1,
    col.main = "darkgreen")

# saving the file
dev.off()

# defining vector
x <- c(21, 23, 56, 90, 20, 7, 94, 12,
       57, 76, 69, 45, 34, 32, 49, 55, 57)

# output to be present as PNG file
png(file = "hist.png")

# hist(x, main = "Histogram of Vector x",
xlab = "Values",
col.lab = "darkgreen",
col.main = "darkgreen")

# saving the file
dev.off()

# taking input from dataset Orange already
# present in R
orange <- Orange[, c('age', 'circumference')]

# output to be present as PNG file
png(file = "plot.png")

# plotting
plot(x = orange$age, y = orange$circumference, xlab = "Age",
     ylab = "Circumference", main = "Age VS Circumference",
     col.lab = "darkgreen", col.main = "darkgreen",
     col.axis = "darkgreen")

# saving the file
dev.off()


# defining vector with ages of employees
x <- c(42, 21, 22, 24, 25, 30, 29, 22,
       23, 23, 24, 28, 32, 45, 39, 40)

# output to be present as PNG file
png(file = "boxplot.png")

# plotting
boxplot(x, xlab = "Box Plot", ylab = "Age",
        col.axis = "darkgreen", col.lab = "darkgreen")

# saving the file
dev.off()

