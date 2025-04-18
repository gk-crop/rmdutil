#' @rdname includeGraphic
#' @export
includeGraphic.grViz <- function (gr,nr=0)
{
  if(knitr::is_html_output())
  {
    gr
  }
  else
  {
    type <- ifelse(knitr::is_latex_output(),'pdf','png')
    save_func <- ifelse(knitr::is_latex_output(),rsvg::rsvg_pdf,rsvg::rsvg_png)
    fn <- knitr::fig_path(type,number=nr)
    dir.create(dirname(fn),recursive = TRUE, showWarnings = FALSE)
    save_func(charToRaw(DiagrammeRsvg::export_svg(gr)),file=fn,width = 2000)
    knitr::include_graphics(fn)
  }
}


#' @rdname includeGraphic
#' @export
includeGraphic.dgr_graph <- function(gr,nr=0) {
  if(knitr::is_html_output())
  {
    DiagrammeR::render_graph(gr)
  }
  else
  {
    type <- ifelse(knitr::is_latex_output(),'pdf','png')
    fn <- knitr::fig_path(type,number=nr)
    dir.create(dirname(fn),recursive = TRUE, showWarnings = FALSE)
    DiagrammeR::export_graph(gr, fn, width = 2000)
    knitr::include_graphics(fn)
  }
}





