#' Includes a graphic into a RMarkdown document
#' 
#' Graphs created in a loop or by some packages like Diagrammer
#' are not always automatically included in the final document
#' produced from a RMarkdown document. This function helps including
#' graphics in documents.
#' 
#' @param gr graph
#' @param nr optional number when creating more than one graph in a chunk
#' 
#' @rdname includeGraphic
#' @export
includeGraphic <- function(gr, nr=0) UseMethod("includeGraphic") 


#' @rdname includeGraphic
#' @export
includeGraphic.default <- function(gr, nr=0) 
{
  print(gr)
  cat("\r\n\r\n")
}