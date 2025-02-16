library(testthat)
library(scmaster)

test_that("safety_stock function calculates the correct value", {
  cat("\n🚀 Starting the Safety Stock function test... \n\n")

  # Define test parameters
  service_level <- 0.95
  demand_sd <- 50
  lead_time <- 4
  expected_safety_stock <- qnorm(service_level) * demand_sd * sqrt(lead_time)

  cat("🔍 Checking if Safety Stock calculation is correct... ")
  expect_equal(safety_stock(service_level, demand_sd, lead_time), expected_safety_stock)
  cat("✅ Safety Stock calculation is correct! 🎯\n")

  cat("\n🎉 Safety Stock test completed successfully! 🎉\n")
})
