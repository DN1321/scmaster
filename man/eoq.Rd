\name{eoq}
\alias{eoq}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Economic Order Quantity (EOQ) Calculation
}
\description{
This function calculates the Economic Order Quantity (EOQ), which is the optimal order quantity that minimizes the total cost of inventory management. The EOQ model balances ordering costs and holding costs.
}
\usage{
eoq(demand, ordering_cost, holding_cost)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{demand}{
    Annual demand for the product (must be a positive numeric value).
  }
  \item{ordering_cost}{
    Fixed cost per order (must be a positive numeric value).
  }
  \item{holding_cost}{
    Holding cost per unit per year (must be a positive numeric value).
}
}
\details{
The EOQ model is a fundamental concept in inventory management that determines the optimal order quantity based on the trade-off between ordering costs and holding costs.

The formula used in this function is:

\deqn{EOQ = \sqrt{\frac{2 \times D \times S}{H}}}

where:
- \eqn{D} is the annual demand,
- \eqn{S} is the ordering cost per order,
- \eqn{H} is the holding cost per unit per year.

This formula minimizes the total inventory cost, which includes both ordering and holding costs.
}
\value{
Returns a single numeric value representing the optimal Economic Order Quantity (EOQ).
}
\author{
Dario Nardiello
}
\note{
All input parameters must be positive numeric values. If any input is non-numeric or negative, the function may return an incorrect or undefined result.
}
\examples{
# Example: Calculate EOQ for a product
demand <- 1000    # Annual demand
ordering_cost <- 50  # Cost per order
holding_cost <- 2    # Holding cost per unit per year

optimal_order_quantity <- eoq(demand, ordering_cost, holding_cost)

print(optimal_order_quantity)
}

\keyword{supply-chain}
\keyword{inventory}
\keyword{logistics}
\keyword{cost-optimization}
\concept{Economic Order Quantity}
\concept{Inventory Management}
\concept{Ordering Costs}
\concept{Holding Costs}
\concept{Optimal Order Quantity}

