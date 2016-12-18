#' Standard Deviation
#' This function calculates the standard deviation of input vector.
#' @param vector x
#'
#' @return numeric
#' @export
#'
#' @examples
#' standard_deviation(c(2,6,7,8))
standard_deviation <- function(x) {
  if (is.null(x)){
    stop("x should contain numbers and should not be null")
  }

  n <- length(x)

  tryCatch({
  mean = sum(x, na.rm = TRUE) / n
  ssq <- sum((x-mean)^2, na.rm = TRUE)
  stddev = sqrt(ssq/n)
  return(stddev)
  }, error=function(e) stop("x does not contain numbers and thus a NaN was returned"))
}
