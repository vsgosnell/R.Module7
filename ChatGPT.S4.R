# Define an S4 class for storing iris-like data
setClass("IrisData",
         slots = list(
           data = "data.frame",
           species = "character"
         ))

# Define a constructor function
IrisData <- function(data) {
  if (!all(c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species") %in% colnames(data))) {
    stop("Data must contain the standard iris dataset columns.")
  }
  new("IrisData",
      data = data[, 1:4],  # Numeric columns only
      species = as.character(data$Species))  # Convert species to character
}

# Create an instance of the class
iris_obj <- IrisData(iris)

# Define a method to print summary statistics
setMethod("show", "IrisData",
          function(object) {
            cat("Iris Data Object\n")
            cat("Number of observations:", nrow(object@data), "\n")
            cat("Species:", paste(unique(object@species), collapse = ", "), "\n")
            print(summary(object@data))
          })

# Display the object
iris_obj



# Define an S4 class (IrisData) with two slots:
#   
# data: A data frame storing the numeric iris measurements.
# species: A character vector containing species names.
# Create a constructor (IrisData()) that initializes an object while ensuring the data contains the expected columns.
# 
# Create an object (iris_obj) using the predefined iris dataset.
# 
# Define a show method to display summary statistics when the object is printed.

# This demonstrates how to structure data using S4 objects in R while maintaining a formal class definition


