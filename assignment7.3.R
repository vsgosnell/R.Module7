#display the data set
print(iris)

# use dim() to get dimension of dataset
cat("Dimension:",dim(iris))

# use nrow() to get number of rows
cat("\nRow:",nrow(iris))

# use ncol() to get number of columns
cat("\nColumn:",ncol(iris))

# use names() to get name of variable of dataset
cat("\nName of Variables:",names(iris))


#create a S3 variable using the data set
s3vars <- list(name = names(iris), columns = ncol(iris),
                 rows = nrow(iris), dimensions = dim(iris))


#couldn't find command to check if it was S3 on google
#check to see if the variables of varnames come back as if it's an S3
s3vars $name

s3vars $columns

s3vars $rows

s3vars $dimensions


#creating S4 object using the data set
#S4 objects created using new()
s4vars <- new("data frame", name = names(iris), dimensions(dim(iris),
              rows = nrows(iris), columns = ncol(iris)))
#produces error, data frame is not defined class




#try creating s4 object again, using setClass() instead of new()
s4vars <- setClass("Iris", 
                   slots = c(
                     Sepal.Length = "numeric",
                     Sepal.Width = "numeric",
                     Petal.Length = "numeric",
                     Petal.Width = "numeric",
                     Species = "character"
                   )
)


#to create an Iris object using this class:
# Assuming your Iris data is loaded into a data frame called "irisData"

newIrisObject <- new("Iris", 
                     
                     Sepal.Length = irisData$Sepal.Length,
                     
                     Sepal.Width = irisData$Sepal.Width,
                     
                     Petal.Length = irisData$Petal.Length,
                     
                     Petal.Width = irisData$Petal.Width,
                     
                     Species = irisData$Species
                     
)

