#' The euclidean algorithm.
#'
#' @param firstNumber A number.
#' @param secondNumber A number.
#' @return The value of euclidean algorithm calculation \code{firstNumber} and \code{secondNumber}.
#' @examples
#' euclidean(100,1000 )

euclidean <- function(firstNumber, secondNumber){
  gcd <- numeric()
  numbers <- numeric()
  numbers_list <- vector()
stopifnot(is.numeric(firstNumber)||is.numeric(secondNumber))
  if (firstNumber==0){
    gcd <- secondNumber
  }
  if (secondNumber==0){
    gcd <- firstNumber
  }
  if (firstNumber==secondNumber){
    gcd <- firstNumber
  }
 if (firstNumber > secondNumber){
   for (i in 1:secondNumber){
     if (firstNumber%%i == 0){
       if (secondNumber/i == 0){
         numbers_list <- c(numbers_list,i)
       }
     }
   }
 }
  if (secondNumber > firstNumber){
    for (i in 1:firstNumber){
      if (secondNumber%%i == 0){
        if (firstNumber%%i == 0){
          numbers_list <- c(numbers_list,i)
        }
      }
    }
  }
return(max(numbers_list))
}



