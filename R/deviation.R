#' Standard Deviation
#' This function calculates the standard deviation of input vector.
#' @param vector x
#'
#' @return numeric
#' @export
#'
#' @examples
#' standard_standard_deviation(c(2,6,7,8))
standard_deviation <- function(x) {
  n <- length(x)
  mean = sum(x) / n
  ssq <- sum((x-mean)^2)
  stddev = sqrt(ssq/n)
  return(stddev)
}


standard_error <- function(x) standard_deviation(x)/sqrt(length(x))
