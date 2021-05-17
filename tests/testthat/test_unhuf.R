library(beadando)

test_that( "legyen szám", {
  expect_type(unhuf("4 Ft"), "double")
  expect_type(unhuf("-2 Ft"), "double")
  expect_type(unhuf("0.00 Ft"), "double")
  expect_type(unhuf("-42 Ft"), "double")
  expect_type(unhuf("3,423.42 Ft"), "double")
})
