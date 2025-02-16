library(testthat)
library(scmaster)

test_abc_function <- function() {
  test_that("abc function performs correctly", {
    cat("\n🚀 Starting the ABC function test... \n\n")

    # Test data creation
    test_data <- data.frame(Product = c("Prod1", "Prod2", "Prod3", "Prod4", "Prod5"),
                            Revenue = c(500, 300, 100, 50, 20))

    # Apply the abc function
    result <- abc_analysis(test_data)

    # Test 1: Check if 'Category' column exists
    cat("🔍 Checking if the 'Category' column is present... ")
    expect_true("Category" %in% colnames(result), info = "The 'Category' column is missing! ❌")
    cat("✅ 'Category' column found! 😄\n")

    # Test 2: Check if 'Cumulative' column exists
    cat("🔍 Checking if the 'Cumulative' column is present... ")
    expect_true("Cumulative" %in% colnames(result), info = "The 'Cumulative' column is missing! ❌")
    cat("✅ 'Cumulative' column found! 🎉\n")

    # Test 3: Check if all categories are correct (A, B, C)
    cat("🔍 Checking if the categories are correct... ")
    unique_categories <- unique(result$Category)
    expect_true(all(unique_categories %in% c("A", "B", "C")), info = paste("Unexpected categories found: ", paste(unique_categories, collapse = ", "), " ❌"))
    cat("✅ Categories are correct: ", paste(unique_categories, collapse = ", "), " 🎯\n")

    # Test 4: Ensure that Category A has the highest revenue, then B, then C
    cat("🔍 Checking if the revenue distribution between categories is correct... ")
    a_products <- result[result$Category == "A", ]
    b_products <- result[result$Category == "B", ]
    c_products <- result[result$Category == "C", ]

    expect_true(sum(a_products$Revenue) > sum(b_products$Revenue) && sum(b_products$Revenue) > sum(c_products$Revenue),
                info = "Revenue distribution is incorrect! 😱")
    cat("✅ Revenue distribution is correct! 💪 (A > B > C)\n")

    cat("\n🎉 Test completed successfully! 🎉\n")
    cat("Everything looks good 😎💚\n")
  })
}

test_abc_function()
