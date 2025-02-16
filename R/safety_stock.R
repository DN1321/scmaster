# Function to calculate the safety stock
# Parameters:
#   service_level: Desired service level (e.g., 0.95 for 95%)
#   demand_sd: Standard deviation of demand
#   lead_time: Lead time in the same time unit as demand_sd
safety_stock <- function(service_level, demand_sd, lead_time) {
  z_value <- qnorm(service_level)  # Z-score for the desired service level
  z_value * demand_sd * sqrt(lead_time)
}

