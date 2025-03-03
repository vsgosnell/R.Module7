#creating S4 functions
#S4 class is defined using setClass() function
setClass("employee”, 
          representation(
            name=“character”,
            salary=“numeric”,
            union=“logical”
            ))
$this code doesn't work


          
student <- setClass("student", slots=list(name="character", age="numeric", GPA="numeric"))


setMethod("show",
         "student",
          function(object) {
           cat(object@name, "\n")
           cat(object@age, "years old\n")
           cat("GPA:", object@GPA, "\n")
         }
)
#produces error



# Similarly, slots can be access or modified using the slot() function.
slot(s,"name")

install.packages(“pryr”)

library(pryr)



