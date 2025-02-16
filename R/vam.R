# Transportation optimization function
# Parameters:
#   costs: A matrix of transportation costs between supply and demand points
#   supply: A vector of supply quantities at each supply point
#   demand: A vector of demand quantities at each demand point
library(lpSolve)

transport_optimization <- function(costs, supply, demand) {
  result <- lp.transport(costs, "min", row.signs = rep("<=", length(supply)), row.rhs = supply,
                         col.signs = rep(">=", length(demand)), col.rhs = demand)
  return(result$solution)  # Return the optimal transportation plan
}


