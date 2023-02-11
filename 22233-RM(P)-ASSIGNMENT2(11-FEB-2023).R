## Generate a uniform random number
x <- 10
if(x > 3)
{
  y <- 10
}
#another way of writing if else in R
y <- if(x > 3) 
  {
     10
  } else  { 
      0
        }
for(i in 1:10) {
          print(i)
}

x <- c("a", "b", "c", "d")
 
for(i in 1:4) {
            ## Print out each element of 'x'
           print(x[i])  
}
## Generate a sequence based on length of 'x'
   for(i in seq_along(x)) {   
             print(x[i])
    }
for(i in 1:4) print(x[i])
x <- matrix(1:6, 2, 3)

for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[i, j])
  }   
}
 count <- 0
 while(count < 10) {
           print(count)
           count <- count + 1
   }
 for(i in 1:100) {
   if(i <= 20) {
     ## Skip the first 20 iterations
     next                 
   }
   ## Do something here
   print(i)
 }
 
 for(i in 1:100) {
   print(i)
   
   if(i > 20) {
     ## Stop loop after 20 iterations
     print("breaking out of the loop")
     break  
   }     
 }