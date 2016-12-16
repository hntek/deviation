context("Testing the deviation package")

test_that("Positive numbers should return to a positive standart deviation", {
  expect_equal(standard_deviation(c(1,2,3,4)), 1.118034)
  expect_equal(standard_deviation(c(1000,500.800,1000)), 235.325136)
  expect_equal(standard_deviation(c(0,100,4)), 46.226495)
})

# !!!Test cases are not complete!!!!

#test_that("expect a number not a string", {
#  expect_that(fahr_to_celsius("A"), throws_error())
#  expect_that(fahr_to_kelvin("A"), throws_error())
#  expect_that(celsius_to_fahr("A"), throws_error())
#  expect_that(celsius_to_kelvin("A"), throws_error())
#  expect_that(kelvin_to_celsius("A"), throws_error())
#  expect_that(kelvin_to_fahr("A"), throws_error())
#
#})

#test_that("kelvin cannot be negative", {
#  expect_warning(kelvin_to_fahr(-10),"kelvin cannot be negative")
#  expect_warning(kelvin_to_celsius(-10),"kelvin cannot be negative")
#})
