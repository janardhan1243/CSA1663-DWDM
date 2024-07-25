# Sample data: Points scored by players
points_scored <- c(15, 20, 22, 25, 30, 35, 40, 18, 28, 32, 34, 50, 23, 29, 21, 27, 33, 37, 45, 60)

# Create a boxplot for points scored
boxplot(points_scored,
        main = "Distribution of Points Scored by Tennis Players",
        ylab = "Points Scored",
        col = "lightgreen",
        border = "darkgreen",
        notch = TRUE)

# Add grid for better readability
grid()

# Add horizontal line at the median
abline(h = median(points_scored), col = "red", lwd = 2)

# Display the data points
points(1, points_scored, col = "blue", pch = 16)
