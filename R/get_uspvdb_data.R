#' Get USPVDB data
#' @param wh_state State to get data for
#' @returns df Dataframe of requested data from USPVDB API
#' @export

get_uspvdb_data <- function(wh_state){

  req_url <- construct_query_url(wh_state = wh_state)

  df <- get_api_request(query_url = req_url)

}
