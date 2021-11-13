#' Starts a special LaTeX environment
#'
#' Some environments like `align` must not be
#' included within `$$`..`$$` when creating a PDF.
#' For Word documents, however, the `$$` are needed.
#'
#' @export
texEnv <- function() ifelse(knitr::is_latex_output() || knitr::is_html_output(),"","$$")

