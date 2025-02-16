\name{transport_optimization}
\alias{transport_optimization}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Optimal Transportation Plan Using Linear Programming (VAM)
}
\description{
This function solves a transportation optimization problem using linear programming. It finds the optimal transportation plan that minimizes total transportation costs while ensuring supply and demand constraints are met.
}
\usage{
transport_optimization(costs, supply, demand)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{costs}{
    A numeric matrix representing the transportation costs between supply and demand points. Rows correspond to supply points, and columns correspond to demand points.
  }
  \item{supply}{
    A numeric vector indicating the available supply at each supply point. The length must match the number of rows in \code{costs}.
  }
  \item{demand}{
    A numeric vector indicating the required demand at each demand point. The length must match the number of columns in \code{costs}.
  }
}
\details{
This function formulates the transportation problem as a linear programming model and solves it using the \code{lp.transport()} function from the \pkg{lpSolve} package.

The function minimizes the total transportation costs while ensuring:
\itemize{
  \item Each supply point does not exceed its available supply.
  \item Each demand point receives at least its required demand.
}

The transportation problem is a classic optimization issue in logistics and supply chain management, where the goal is to determine the most cost-effective way to distribute goods.
}
\value{
Returns a numeric matrix representing the optimal transportation plan, where each element indicates the quantity transported from a specific supply point to a demand point.
}
\author{
Dario Nardiello
}
\note{
The \pkg{lpSolve} package must be installed and loaded to use this function. Make sure that the total supply is at least equal to the total demand; otherwise, the function may return an infeasible solution.
}
\examples{
# Example: Solve a transportation problem
library(lpSolve)

# Define transportation cost matrix
costs <- matrix(c(4, 8, 8, 2, 7, 6, 3, 4, 9), nrow = 3, byrow = TRUE)

# Define supply and demand
supply <- c(50, 60, 50)
demand <- c(30, 80, 50)

# Compute the optimal transportation plan
optimal_plan <- transport_optimization(costs, supply, demand)

# Print the result
print(optimal_plan)
}

\keyword{supply-chain}
\keyword{optimization}
\keyword{transportation}
\keyword{logistics}
\keyword{linear-programming}
\concept{Transportation Optimization}
\concept{Linear Programming}
\concept{Supply Chain Optimization}
\concept{Logistics Management}
\concept{Cost Minimization}

