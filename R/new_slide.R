
#' Create a new slide in the middle of a knitr chunk
#' 
#' Thanks to Yihui Xie for this solution: \url{https://stackoverflow.com/a/59182060/1129889}.
#'
#' @param title The title of the new slide
#'
#' @return An object a class named knit_asis, so that `knitr`` 
#' will treat it as is (the effect is the same as the chunk 
#' option `results = 'asis'`) when it is written to the output.
#' @export 
#' @importFrom knitr asis_output
#'
#' @examples
new_slide = function(title = "&nbsp; {.nopagenumberincrement .previoustitle}")
  knitr::asis_output(paste0("\n\n## ", title, "\n\n"))

  