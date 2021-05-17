#' Get usd/huf rate
#' @param retried number of times failed in the past
#' @return number
#' @export
#' @importFrom formattable formattable

unhuf <- function(x){
  if(grepl("[[:digit:]]",x)){
    formattable(as.numeric(gsub('[^-0-9.]*',"", x)), digits=2, format="f")
  }
}
