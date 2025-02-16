# ABC analysis function
# Parameters:
#   data: A data frame with 'Product' and 'Revenue' columns
# Returns:
#   A data frame with 'Product', 'Revenue', 'Cumulative', and 'Category' columns
abc_analysis <- function(data) {
  data <- data[order(-data$Revenue), ]  # Sort by descending revenue
  data$Cumulative <- cumsum(data$Revenue) / sum(data$Revenue)  # Calculate cumulative revenue share
  data$Category <- cut(data$Cumulative, breaks = c(0, 0.8, 0.95, 1), labels = c("A", "B", "C"))  # Categorize based on cumulative share
  return(data)
}
