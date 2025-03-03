#using constructors to create objects
student = function(n,a,g){
  if(g>4 || g< 0) stop("GPA must be between 0 and 4")
  value  = list(name = n, age = a, GPA = g)
  
  attr(value,"class") = "student"
  value
}


#another example

s <- student("Paul", 26, 3.7)
s

s $name

s $GPA

attr(“class”)

class(s)

s <- student("Paul", 26, 5) 
# R will point on the Error in student("Paul", 26, 5) : GPA must be between 0 and 4

s <- student("Paul", 26, 2.5)
# it’s up to us to maintain it or not 
s $GPA <-5

