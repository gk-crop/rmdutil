#' Includes graphs produced in a loop into final document
#'
#' When producing graphics within a loop, only the last
#' graph will be included by default. When calling this
#' function, the graph is printed. If withBlanLine is TRUE,
#' then a blank line is printed, causing the creation of
#' figure environments.
#'
#' @param gr graph
#' @param withBlankLine if TRUE, then a blank line is printed
#'
#' @export
showGraph <- function(gr, withBlankLine = TRUE ) {
  print(gr)
  if(withBlankLine) {
    cat("\r\n\r\n")
  }
}
