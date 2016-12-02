#' Standard Error
#' This function calculates the standard error of input vector
#' @param vector x
#'
#' @return numeric
#' @export
#'
#' @examples
#' standard_error(c(1,2,3,4))
standard_error <- function(x){
  calculation <- standard_deviation(x)/sqrt(length(x))
  return(calculation)
}

