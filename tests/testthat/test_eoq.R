library(testthat)
library(scmaster)

test_that("eoq function calculates the correct value", {
  cat("\n🚀 Starting the EOQ function test... \n\n")

  # Define test parameters
  demand <- 1000
  ordering_cost <- 50
  holding_cost <- 2
  expected_eoq <- sqrt((2 * demand * ordering_cost) / holding_cost)

  cat("🔍 Checking if EOQ calculation is correct... ")
  expect_equal(eoq(demand, ordering_cost, holding_cost), expected_eoq)
  cat("✅ EOQ calculation is correct! 🎯\n")

  cat("\n🎉 EOQ test completed successfully! 🎉\n")
})
