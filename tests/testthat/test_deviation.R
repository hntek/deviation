context("Testing the deviation package")

test_that("Positive numbers should return to a positive standard deviation", {
  expect_equal(standard_deviation(c(1,2,3,4)), 1.118034)
  expect_equal(standard_deviation(c(1000,500,800,1000)), 204.633819)
  expect_equal(standard_deviation(c(0,100,4)), 46.226495)
  expect_equal(standard_deviation(c(1,1,1,1)), 0)
})

test_that("Positive numbers should return to a positive standard error", {
  expect_equal(standard_error(c(1,2,3,4)), 0.559017)
  expect_equal(standard_error(c(1000,500,800,1000)), 102.316909)
  expect_equal(standard_error(c(0,100,4)), 26.6888796)
  expect_equal(standard_error(c(1,1,1,1)), 0)
})

test_that("Negative numbers should return to a positive standard deviation", {
  expect_equal(standard_deviation(c(-1,-2,-3,-4)), 1.118034)
  expect_equal(standard_deviation(c(-1000,-500,-800,-1000)), 204.633819)
  expect_equal(standard_deviation(c(0,-100,-4)), 46.226495)
})

test_that("Standard error should be smaller than or equal to standard deviation", {
  expect_that(standard_deviation(c(1,2,3,4))>=standard_error(c(1,2,3,4)), is_true())
  expect_that(standard_deviation(c(-1,-2,-3,-4))>=standard_error(c(-1,-2,-3,-4)), is_true())
})

test_that("Negative numbers should return to a positive standard error", {
  expect_equal(standard_error(c(-1,-2,-3,-4)), 0.559017)
  expect_equal(standard_error(c(-1000,-500,-800,-1000)), 102.316909)
  expect_equal(standard_error(c(0,-100,-4)), 26.6888796)
})

test_that("NA/NaN should be removed", {
  expect_equal(standard_deviation(c(1,2,3,NA)), 0.8291562)
  expect_equal(standard_deviation(c(NaN,500,800,1000)), 243.3490291)
})

test_that("NA/NaN should be removed", {
  expect_equal(standard_error(c(1,2,3,NA)), 0.4145781)
  expect_equal(standard_error(c(NaN,500,800,1000)), 121.6745145)
})

test_that("empty list should produce an error",{
expect_that(standard_deviation(c()),throws_error())
expect_that(standard_error(c()),throws_error())
})

test_that("the functions take only number",{
  expect_that(standard_deviation(c(1,2, "a")), throws_error())
  expect_that(standard_deviation(c("a","b", "c")), throws_error())
  expect_that(standard_error(c(1,2, "a")), throws_error())
  expect_that(standard_error(c("a","b", "c")), throws_error())
})

