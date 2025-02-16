# scmaster
  An R package for supply chain optimization and forecasting.
  It includes functions for ABC analysis, Economic Order Quantity (EOQ),
  safety stock calculation, and transportation optimization using linear programming.
  The package provides essential tools for inventory management, logistics,
  and demand planning, ensuring efficient decision-making in supply chain operations.

  Please note: The package is still an MVP and very lightweight. Developers are welcome to participate in the project and contribute      via GitHub.

## Installation

You can install this package using the following command:

```R
devtools::install_github("https://github.com/DN1321/scmaster.git")
```

## Functions

### `abc_analysis`

Performs an ABC analysis to categorize products based on their revenue contribution.

### `eoq`

Calculates the Economic Order Quantity (EOQ) to minimize total inventory costs.

### `safety_stock`

Calculates the safety stock required to maintain a desired service level.

### `transport_optimization`

Solves a transportation optimization problem using linear programming.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
