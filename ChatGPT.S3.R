# Define an S3 class by creating a constructor function
IrisData <- function(data) {
  if (!all(c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species") %in% colnames(data))) {
    stop("Data must contain the standard iris dataset columns.")
  }
  
  obj <- list(
    data = data[, 1:4],  # Store numeric columns
    species = as.character(data$Species)  # Convert species to character
  )
  
  class(obj) <- "IrisData"  # Assign S3 class
  return(obj)
}

# Define a print method for the S3 class
print.IrisData <- function(object) {
  cat("Iris Data Object (S3)\n")
  cat("Number of observations:", nrow(object$data), "\n")
  cat("Species:", paste(unique(object$species), collapse = ", "), "\n")
  print(summary(object$data))
}

# Define a summary method for the S3 class
summary.IrisData <- function(object) {
  cat("Summary of IrisData Object:\n")
  print(summary(object$data))
}

# Create an instance of the S3 class
iris_obj <- IrisData(iris)

# Print the object
print(iris_obj)

# Call the summary method
summary(iris_obj)





# Define an S3 constructor function (IrisData())
#   
# It ensures the input dataset contains the necessary columns.
# It creates a list with two components:
# data: The numeric measurements.
# species: A character vector of species names.
# It assigns the "IrisData" class to the list.
# Create an S3 print method (print.IrisData())
# 
# Displays object information in a readable format.
# Define a summary method (summary.IrisData())
# 
# Prints summary statistics for sthe numerical columns.
# Create an instance of the S3 object (iris_obj)
# 
# Uses the iris dataset.
# Test the print and summary methods
# 
# Calling print(iris_obj) automatically triggers the custom print method.
# Calling summary(iris_obj) provides summary statistics.


