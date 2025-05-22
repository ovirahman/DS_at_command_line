#!/usr/bin/env Rscript

# Define a function that adds two numbers
sum_two_numbers <- function(a, b) {
  a <- as.numeric(a)
  b <- as.numeric(b)
  result <- a + b
  return(result)
}

# Read command line arguments (excluding the script name)
args <- commandArgs(trailingOnly = TRUE)

# Check if exactly two arguments are passed
if (length(args) != 2) {
  cat("Usage: Rscript sum_two_numbers.R <num1> <num2>\n")
  quit(status = 1)
}

# Call the function with command line arguments
output <- sum_two_numbers(args[1], args[2])

cat(output, "\n")
