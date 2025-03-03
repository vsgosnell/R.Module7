## Two types of R objects – S3 and S4
# S3 objects – classes and methods from beginning – informal methods
# S4 objects – classes and methods developed later – more formal methods (spatial)


## Object names.. 
# Case sensitive
# Consists of letters, numbers, and the dot or underline character
# Can not contain spaces or dashes '-' or special characters
# Can not start with a number or a dot followed by number
# Can not be a reserved word (stored R object).


## Testing object types and modes

myObject <- 1.2345	# Create object		

isS4(myObject)	# Test if object is S4 object
#returns false

mode(myObject)	# Get mode
#returns numeric 

typeof(myObject)	# Get type
#returns double

class(myObject)	# Get class
#returns numeric

is.character(myObject)	# Test if object is character
#returns false

is.vector(myObject)	# Test if object is vector
#returns true




# S3 – older, simpler, more dynamic, less structured version, single dispatch
# S4 – newer, more structured, more rigorous, multi-dispatch

#example of creating an S3 class
s <- list(name = "Sondra", age = 30, GPA = 3.94)
class(s) <- "student"
s
s $name
s $age
s $GPA

