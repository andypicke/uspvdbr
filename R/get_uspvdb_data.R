#' Get USPVDB data
#' @param wh_state State to get data for (default is "all")
#' @returns df Dataframe of requested data from USPVDB API
#' @export

get_uspvdb_data <- function(wh_state = "all"){

  req_url <- construct_query_url(wh_state = wh_state)

  df <- get_api_request(query_url = req_url)

}
