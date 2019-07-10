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
#' @seealso read_word_table
#' @export
read_word <- function(pth) {

  x <- textreadr::read_docx(pth)
  x <- paste(x, collapse = "\n\n")

  cat(x)

}

#' @title Read Word table
#' @description Reads in a table from word and prints it using the knitr and kableExtra package
#' @param pth the path to the word document to read
#' @seealso read_word
#' @examples \dontrun{
#' pth <- "path/table.docx"
#' df <- read_word_table(pth)
#' }
#' @export
read_word_table <- function(pth) {

  docx <- docxtractr::read_docx(pth)
  df <- docxtractr::docx_extract_tbl(docx)

  return(df)

}
