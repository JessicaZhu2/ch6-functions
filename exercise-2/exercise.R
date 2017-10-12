# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <-function(first, second){
  n <- abs(length(first)-length(second))
  return(paste("The difference in lengths is ", n))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c('hi','hello'), c('blue', 'red'))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(first, second){
  f.length <- length(first);
  s.length <- length(second);
  if(f.length > s.length){
    n <- f.length - s.length
    sentence <- paste("your first vector is longer by ",n, " elements" )
  }else{
    n <- s.length - f.length
    sentence <- paste("your second vector is longer ", n, "elements")
  }
  return sentence
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c('hi','hello','hey'), c('blue', 'red'))


### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer