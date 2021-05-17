#' Formats HUngarian Forint
#' @param x number
#' @return string
#' @export
#' @importFrom scales dollar
#' @examples
#' forint(42)
#' forint(12345678231)
forint <- function (x){
  dollar(x, prefix="", suffix=" Ft", decimal.mark=".", big.mark=" ")
}
