# Load necessary libraries
install.packages("ggplot2")
library(ggplot2)

# Load the dataset
diabetes_data <- read.csv("path/to/diabetes.csv")

# View the first few rows of the dataset to understand its structure
head(diabetes_data)

# Scatterplot of BloodPressure vs Age
ggplot(diabetes_data, aes(x = Age, y = BloodPressure)) +
  geom_point(color = "blue") +
  labs(title = "Scatterplot of BloodPressure vs Age",
       x = "Age",
       y = "Blood Pressure") +
  theme_minimal()

# Create age groups for the bar chart
diabetes_data$AgeGroup <- cut(diabetes_data$Age, 
                              breaks = seq(20, 90, by = 10), 
                              right = FALSE,
                              labels = c("20-29", "30-39", "40-49", "50-59", "60-69", "70-79", "80-89"))

# Aggregate the data to calculate mean BloodPressure for each age group
age_group_summary <- aggregate(BloodPressure ~ AgeGroup, data = diabetes_data, FUN = mean)

# Bar chart of mean BloodPressure vs AgeGroup
ggplot(age_group_summary, aes(x = AgeGroup, y = BloodPressure)) +
  geom_bar(stat = "identity", fill = "lightblue", color = "darkblue") +
  labs(title = "Mean Blood Pressure by Age Group",
       x = "Age Group",
       y = "Mean Blood Pressure") +
  theme_minimal()
