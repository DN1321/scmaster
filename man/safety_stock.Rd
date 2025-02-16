\name{safety_stock}
\alias{safety_stock}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Safety Stock Calculation
}
\description{
This function calculates the safety stock required to maintain a desired service level in inventory management. Safety stock helps prevent stockouts due to demand variability and lead time uncertainty.
}
\usage{
safety_stock(service_level, demand_sd, lead_time)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{service_level}{
    Desired service level (e.g., 0.95 for 95\%). Must be a numeric value between 0 and 1.
  }
  \item{demand_sd}{
    Standard deviation of demand during the lead time. Must be a positive numeric value.
  }
  \item{lead_time}{
    Lead time in the same time unit as demand_sd. Must be a positive numeric value.
}
}
\details{
The safety stock is calculated using the formula:

\deqn{SS = Z \times \sigma_d \times \sqrt{LT}}

where:
- \eqn{Z} is the Z-score corresponding to the desired service level (from the normal distribution),
- \eqn{\sigma_d} is the standard deviation of demand,
- \eqn{LT} is the lead time.

The Z-score is determined using the standard normal quantile function (\code{qnorm}).
}
\value{
Returns a single numeric value representing the required safety stock.
}
\author{
Dario Nardiello
}
\note{
All input parameters must be positive numeric values, and the service level must be between 0 and 1. If inputs are incorrect, the function may return \code{NaN} or an error.
}
\examples{
# Example: Calculate safety stock for a product
service_level <- 0.95  # 95\% service level
demand_sd <- 50        # Standard deviation of demand
lead_time <- 4         # Lead time in the same unit as demand_sd

required_safety_stock <- safety_stock(service_level, demand_sd, lead_time)

print(required_safety_stock)
}

\keyword{supply-chain}
\keyword{inventory}
\keyword{logistics}
\keyword{risk-management}
\concept{Safety Stock}
\concept{Demand Variability}
\concept{Service Level}
\concept{Lead Time Uncertainty}
\concept{Inventory Optimization}

