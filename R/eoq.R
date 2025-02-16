# Function to calculate the Economic Order Quantity (EOQ)
# Parameters:
#   demand: Annual demand for the product
#   ordering_cost: Cost per order
#   holding_cost: Holding cost per unit
eoq <- function(demand, ordering_cost, holding_cost) {
  sqrt((2 * demand * ordering_cost) / holding_cost)
}
