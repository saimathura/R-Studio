#rm(list = ls())#doing clean data clear and clearing the Env
#Implementation basic Data Types In R
#logical 
bool1 = TRUE
bool2 = FALSE
print(bool1)
print(bool2)
print(class(bool1))
print(class(bool2))
is_weekend <- F 
# Note: You can also define logical variables
# with a single letter - T for TRUE or F for FALSE. For example,
print(class(is_weekend))  # "logical"

# Numeric Data Type
# floating point values
weight <- 63.5
print(weight)
print(class(weight))

# real numbers
height <- 182
print(height)
print(class(height))

#Integer Data Type

integer_variable <- 186L
print(class(integer_variable))

# complex Data type
# 2i represents imaginary part
complex_value <- 3 + 2i

# print class of complex_value
print(class(complex_value))

# character data type
# create a string variable
fruit <- "Apple"
print(class(fruit))

# create a character variable
my_char <- 'A'
print(class(my_char))

#Raw Data Type

# convert character to raw
raw_variable <- charToRaw("Sairam")

print(raw_variable)
print(class(raw_variable))

# convert raw to character
char_variable <- rawToChar(raw_variable)

print(char_variable)
print(class(char_variable))

#Now moving On To built in Complex data Types in R
#trying out new stufff...
((-4:0))
#by doing this we are creating a list which automaticall generate 
#list of values (a,b) from a to b
list = (-4:10)
print(list)

#Type verification (this one helps a lot when we import a large amount of 
# datset)

# Verify if an object is of a certain datatype

# Logical
print(is.logical(TRUE))

# Integer
print(is.integer(3L))

# Numeric
print(is.numeric(10.5))

# Complex
print(is.complex(1+2i))

# Character
print(is.character("12-04-2020"))

print(is.integer("a"))

print(is.numeric(2+3i))

# R has many data structures. These include
# 
# atomic vector
# list
# matrix
# data frame
# factors


# atomic vector
# Vectors
# A vector is the most common and basic data structure in R and is pretty much the
# workhorse of R. Technically, vectors can be one of two types:
#   
# atomic vectors
# lists
# although the term “vector” most commonly refers to the atomic types
#not to lists.
# The Different Vector Modes
# A vector is a collection of elements that are most commonly of mode 
#character,
# logical, integer or numeric.
# 
# You can create an empty vector with vector(). 
#(By default the mode is logical. 
#
# It is more common to use direct constructors such as character(), \
#numeric(), etc.
vector() # an empty 'logical' (the default) vector
vector("character", length = 5) # a vector of mode 'character' with 5 elements
character(5) # the same thing, but using the constructor directly
numeric(5)   # a numeric vector with 5 elements
logical(5)   # a logical vector with 5 elements
x <- c(1, 2, 3)
x1 <- c(1L, 2L, 3L)
y <- c(TRUE, TRUE, FALSE, FALSE)
z <- c("Sarah", "Tracy", "Jon")
#Examining Vectors
#The functions typeof(), length(), class() and str()
#provide useful information about your vectors and R objects in general.
typeof(z)
length(z)
class(z)
str(z)
#Adding Elements
#The function c() (for combine) can also be used to add elements to a vector.
z <- c(z, "Annette")
print(z)
z <- c("Greg", z)
print(z)
#Vectors from a Sequence of Numbers
#You can create vectors as a sequence of numbers.
#
#

series <- 1:10
seq(10)

seq(from = 1, to = 10, by = 0.1)

#Missing Data
#R supports missing data in vectors. They are represented as NA 
#(Not Available) and can be used for all the vector types 

x <- c(0.5, NA, 0.7)
x <- c(TRUE, FALSE, NA)
x <- c("a", NA, "c", "d", "e")
x <- c(1+5i, 2-3i, NA)

x <- c("a", NA, "c", "d", NA)
y <- c("a", "b", "c", "d", "e")
is.na(x)

is.na(y)

anyNA(x)

anyNA(y)
#Other Special Values
#Inf is infinity. You can have either positive or negative infinity.

1/0
#NaN means Not a Number. It’s an undefined value.
0/0

#What Happens When You Mix Types Inside a Vector?
#R will create a resulting vector with a mode that can most easily accommodate
#all the elements it contains. This conversion between modes of storage is called
#“coercion”. When R converts the mode of storage based on its content, it is referred to as “implicit coercion”.

xx <- c(1.7, "a")
xx <- c(TRUE, 2)
xx <- c("a", TRUE)

as.numeric("1")

as.character(1:2)

#Objects Attributes
#Objects can have attributes. Attributes are part of the object. These include:
  
#  names
#dimnames
#dim
#class
#attributes (contain metadata)
#You can also glean other attribute-like information such as length
#(works on vectors and lists) or number of characters (for character strings).

length(1:10)
nchar("Software Carpentry")

#Matrix
#In R matrices are an extension of the numeric or character vectors. They are
#not a separate type of object but simply an atomic vector with dimensions; 
#the number of rows and columns. As with atomic vectors, the elements of a matrix must be of the same data type.
m <- matrix(nrow = 2, ncol = 2)
m
dim(m)

m <- matrix(c(1:3))
class(m)

typeof(m)

FOURS <- matrix(
  c(4, 4, 4, 4),
  nrow = 2,
  ncol = 2)

m <- matrix(1:6, nrow = 2, ncol = 3)
#other way to construct a matrix
m      <- 1:10
dim(m) <- c(2, 5)
#This takes a vector and transforms it into a matrix with 2 rows and 5 columns.

#Another way is to bind columns or rows using rbind() and cbind() 
#(“row bind” and “column bind”, respectively).
#
x <- 1:3
y <- 10:12
cbind(x, y)

rbind(x, y)
#You can also use the byrow argument to specify how the matrix is filled. 
#From R’s own documentation:
mdat <- matrix(c(1, 2, 3, 11, 12, 13),
               nrow = 2,
               ncol = 3,
               byrow = TRUE)
print(mdat)

#Elements of a matrix can be referenced by specifying the index along each 
#dimension (e.g. “row” and “column”) in single square brackets.
mdat[2, 3]

# List
# In R lists act as containers. Unlike atomic vectors, the contents of a list are
# not restricted to a single mode and can encompass any mixture of data types.
# Lists are sometimes called generic vectors, because the elements of a list can 
# by of any type of R object, even lists containing further lists. 
# This property makes them fundamentally different from atomic vectors.
# 
# A list is a special type of vector. Each element can be a different type.
# 
# Create lists using list() or coerce other objects using as.list(). 
#An empty list of the required length can be created using vector()

x <- list(1, "a", TRUE, 1+4i)
x

x <- vector("list", length = 5) # empty list
length(x)

x[[1]]

x <- 1:10
x <- as.list(x)
length(x)

xlist <- list(a = "Sai Mathura Krishnan", b = 1:10, data = head(mtcars))
xlist


names(xlist)

# The following example creates an array of two 3x3 matrices each with 3 rows and 3 columns.
# Data Frame
# A data frame is a very important data type in R. It’s pretty much the 
# data structure for most tabular data and what we use for statistics.
# 
# A data frame is a special type of list where every element of the list has same
# length (i.e. data frame is a “rectangular” list).
# 
# Data frames can have additional attributes such as rownames(),
# which can be useful for annotating data, like subject_id or sample_id. 
# But most of the time they are not used.
# 
# Some additional information on data frames:
#   
#   Usually created by read.csv() and read.table(), i.e. when importing the data
# into R.
# Assuming all columns in a data frame are of same type,
# data frame can be converted to a matrix with data.matrix() (preferred) 
# or as.matrix(). Otherwise type coercion will be enforced and the results 
# may not always be what you expect.
# Can also create a new data frame with data.frame() function.
# Find the number of rows and columns with nrow(dat) and ncol(dat), respectively.
# Rownames are often automatically generated and look like 1, 2, …, n. Consistency in numbering of rownames may not be honored when rows are reshuffled or subset.
# Creating Data Frames by Hand
# To create data frames by hand:

dat <- data.frame(id = letters[1:10], x = 1:10, y = 11:20)
dat

# head() - shows first 6 rows
# tail() - shows last 6 rows
# dim() - returns the dimensions of data frame (i.e. number of rows and number
#                                               of columns)
# nrow() - number of rows
# ncol() - number of columns
# str() - structure of data frame - name, type and preview of data in each
#column
# names() or colnames() - both show the names attribute for a data frame
# sapply(dataframe, class) - shows the class of each column in the data frame

is.list(dat)
class(dat)
dat[1, 3]
dat[["y"]]
dat$y
str(PlantGrowth)
#Using Factors in differnt ways
# Create a vector as input.
data <- c("East","West","East","North","North","East","West","West","West","East","North")

print(data)
print(is.factor(data))

# Apply the factor function.
factor_data <- factor(data)

print(factor_data)
print(is.factor(factor_data))



#Arrays

# Arrays are the R data objects which can store data in more than two dimensions.
# For example − If we create an array of dimension (2, 3, 4) then it creates 4 
# rectangular matrices each with 2 rows and 3 columns. Arrays can store only 
# data type.
# 
# An array is created using the array() function. It takes vectors as 
# input and uses the values in the dim parameter to create an array.

# Example

# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)

# Naming Columns and Rows
# We can give names to the rows, columns and matrices in the array by using the 
# dimnames parameter.

# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),
                dim = c(3,3,2),
                dimnames = list(row.names,column.names,matrix.names))
print(result)

#Accessing Array Elements

# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

# Take these vectors as input to the array.
result <- array(c(vector1,vector2),
                dim = c(3,3,2),dimnames = list(row.names,column.names, 
                                               matrix.names))

# Print the third row of the second matrix of the array.
print(result[3,,2])

# Print the element in the 1st row and 3rd column of the 1st matrix.
print(result[1,3,1])

# Print the 2nd Matrix.
print(result[,,2])

# Manipulating Array Elements
# As array is made up matrices in multiple dimensions, the operations on elements 
# of array are carried out by accessing elements of the matrices.

# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
array1 <- array(c(vector1,vector2),dim = c(3,3,2))

# Create two vectors of different lengths.
vector3 <- c(9,1,0)
vector4 <- c(6,0,11,3,14,1,2,6,9)
array2 <- array(c(vector1,vector2),dim = c(3,3,2))

# create matrices from these arrays.
matrix1 <- array1[,,2]
matrix2 <- array2[,,2]

# Add the matrices.
result <- matrix1+matrix2
print(result)



# Following is the description of the parameters used −
# 
# x is an array.
# 
# margin is the name of the data set used.
# 
# fun is the function to be applied across the elements of the array.
# 
# Example
# We use the apply() function below to calculate the sum of the elements in the 
# rows of an array across all the matrices.

# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

# Take these vectors as input to the array.
new.array <- array(c(vector1,vector2),dim = c(3,3,2))
print(new.array)

# Use apply to calculate the sum of the rows across all the matrices.
result <- apply(new.array, c(1), sum)
print(result)

# Access Entire Row or Column
# In R, we can also access the entire row or column based on the value passed inside [].
# 
# [c(n), ,mat_level] - returns the entire element of the nth row.
# [ ,c(n), mat_level] - returns the entire element of the nth column.

# create a two 2 by 3 matrix
array1 <- array(c(1:12), dim = c(2,3,2))

print(array1)



# access entire elements at 2nd column of 1st matrix
cat("\n2nd Column Elements of 1st matrix:", array1[,c(2),1])

# access entire elements at 1st row of 2nd matrix
cat("\n1st Row Elements of 2nd Matrix:", array1[c(1), ,2])

# Check if Element Exists

# In R, we use the %in% operator to check if the specified element is

# present in the matrix or not and returns a boolean value.
# 
# TRUE - if specified element is present in the matrix

# FALSE - if specified element is not present in the matrix

# create a two 2 by 3 matrix
array1 <- array(c(1:12), dim = c(2,3,2))

11 %in% array1 # TRUE

13 %in% array1 # FALSE

# Length of Array in R

# In R, we can use the length() 

# function to find the number of elements present inside the array. For example,

# create a two 2 by 3 matrix


array1 <- array(c(1:12), dim = c(2,3,2))


# find total elements in array1 using length()

cat("Total Elements:", length(array1))