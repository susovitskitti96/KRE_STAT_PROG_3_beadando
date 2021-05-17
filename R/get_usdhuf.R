#' Get usd/huf rate
#' @param retried number of times failed in the past
#' @return number
#' @export
#' @importFrom httr GET content
#' @importFrom logger log_info
#' @importFrom checkmate assert_number

get_usdhuf <-function(retried = 0){
  tryCatch({
    response <- GET('https://api.exchangerate.host/latest?base=USD&symbols=HUF')
    usdhuf <- content(response)$rates$HUF
    assert_number(usdhuf, lower = 250, upper = 350)
    usdhuf
  }, error = function(e) {
    log_error(e$message)

    Sys.sleep(1 + retried^2)
    get_usdhuf(retried =retried + 1)
  })
  log_info('1 USD currently costs {usdhuf} Hungarian Forints')
  return(usdhuf)
}
