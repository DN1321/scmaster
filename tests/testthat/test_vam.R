library(testthat)
library(lpSolve)
library(scmaster)

library(testthat)
library(lpSolve)

test_that("transport_optimization function works correctly", {
  cat("\n🚀 Starting the Transportation Optimization function test... \n\n")

  # Define a sample transportation cost matrix
  costs <- matrix(c(4, 8, 8, 2, 7, 6, 3, 4, 9), nrow = 3, byrow = TRUE)

  # Define supply and demand
  supply <- c(50, 60, 50)
  demand <- c(30, 80, 50)

  cat("🔍 Running transport_optimization()... ")
  optimal_plan <- transport_optimization(costs, supply, demand)
  cat("✅ Optimization function executed successfully! 🚚\n")

  # Check if the result is a matrix
  cat("🔍 Checking if result is a matrix... ")
  expect_true(is.matrix(optimal_plan))
  cat("✅ Output is a matrix! 📊\n")

  # Check if the matrix dimensions match supply & demand
  cat("🔍 Checking if matrix dimensions are correct... ")
  expect_equal(dim(optimal_plan), c(length(supply), length(demand)))
  cat("✅ Matrix dimensions are correct! 📏\n")

  # Check if row sums match supply
  cat("🔍 Checking if supply constraints are met... ")
  expect_equal(rowSums(optimal_plan), supply)
  cat("✅ Supply constraints met! 📦\n")

  # Check if column sums match demand
  cat("🔍 Checking if demand constraints are met... ")
  expect_equal(colSums(optimal_plan), demand)
  cat("✅ Demand constraints met! 🎯\n")

  cat("\n🎉 Transportation Optimization test completed successfully! 🎉\n")
})
