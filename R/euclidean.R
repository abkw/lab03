#' The Euclidean Algorithm
#'
#' @description Euclidean Algorithm is an efficient method for computing the greatest common divisor (GCD) of two numbers, the largest number that divides both of them without leaving a remainder.
#'
#' @param a A Numerical value
#' @param b A Numerical Value
#'
#' @return Gratest common divior of given values
#' @export
#'
#' @examples
#' euclidean(123612, 13892347912)
#' euclidean(100, 1000)
#' @seealso \url{https://en.wikipedia.org/wiki/Euclidean_algorithm}

euclidean <- function(a, b) {
  value_one <- a
  value_two <- b

  while(value_two != 0) {
    reminder_value <- value_one %% value_two
    value_one <- value_two
    value_two <- reminder_value
  }
  return(value_one)
}

