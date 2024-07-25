# Load the mtcars dataset
data("mtcars")

# View the first few rows of the dataset
head(mtcars)

# Create a boxplot for mpg vs cyl
boxplot(mpg ~ as.factor(cyl), data = mtcars,
        main = "Miles Per Gallon by Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon",
        col = "lightblue")

# Optionally, add a grid for better readability
grid()
