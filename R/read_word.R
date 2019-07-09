#' @title Read word
#' @description Reads text from word into Rmarkdown files
#' @param pth the path to the word document to read
#' @example \dontrun{
#' # In Rmarkdown
#' ```{r results = 'asis'}
#' pth <- "./word/intro.docx'
#' read_word(pth)
#' ```
#' }
#' @export
read_word <- function(pth) {

  x <- textreadr::read_docx(pth)
  x <- paste(x, collapse = "\n\n")

  cat(x)

}
