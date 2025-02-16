\name{abc_analysis}
\alias{abc_analysis}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function for a simple ABC Analysis
}
\description{
With this function you can do a classic ABC Product / revenue based analysis.
The function categorizes products or entities into three groups based on their cumulative revenue contribution:
Category A (top 80\%), Category B (next 15\%), and Category C (last 5\%).
Please keep in mind the standard calculation for ABC analysis.
}
\usage{
abc_analysis(data)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
    A data frame containing at least a `Revenue` column.
    This column represents the revenue or value for each entity (e.g., products, customers).
}
}
\details{
This function sorts the data by descending revenue and calculates the cumulative revenue share for each entity.
It then assigns each entity to one of three categories based on their cumulative share:
- Category A: First 80\% of the cumulative revenue
- Category B: Next 15\% of the cumulative revenue
- Category C: Last 5\% of the cumulative revenue
The function returns the original data frame with two additional columns:
- Cumulative: The cumulative revenue share of each entity.
- Category: The category each entity belongs to (A, B, or C).
}
\value{
A data frame with the same number of rows as the input data but with two additional columns:
\item{Cumulative}{The cumulative revenue share of each entity.}
\item{Category}{The category assigned to each entity: A, B, or C.}
}
\author{
Dario Nardiello
}
\note{
This function assumes the input data frame contains a `Revenue` column with numeric values.
}

\examples{
# Example usage of the abc_analysis function

# Example data frame
data <- data.frame(Product = c("Prod1", "Prod2", "Prod3", "Prod4", "Prod5"),
                   Revenue = c(500, 300, 100, 50, 20))

# Apply ABC analysis
result <- abc_analysis(data)

# Print the result
print(result)
}

\keyword{supply-chain}
\keyword{classification}
\keyword{inventory}
\keyword{data-analysis}
\concept{ABC Analysis}
\concept{Pareto Principle}
\concept{Supply Chain Management}
