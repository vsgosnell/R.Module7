#another example
student <- function(n,a,g) {
    if(g>4 || g< 0) stop("GPA must be between 0 and 4")
  value <- list(name = n, age = a, GPA = g)
  
  attr(value,"class") <- "student"
  value
}

grade <- function(obj) {
  UseMethod("grade")
}
