#' Build url query
#' @param wh_state State
#' @returns query url
#' @export

construct_query_url <- function(wh_state){

  base_url <- "https://eersc.usgs.gov/api/uspvdb/v1/"

  endpoint <- "projects"

  # filtering examples:
  #projects?&p_cap_ac=gt.50&p_state=eq.OH  Return facilities that have an AC capacity greater than 50 MW and are located in Ohio.
  #projects?&p_state=eq.AZ  Return facilities that are located in Arizona.

  # return only specific columns:
  #"https://eersc.usgs.gov/api/uspvdb/v1/projects?&select=p_name,p_cap_ac,p_state&order=p_name.desc"

#  wh_state <- "CO"

  #param_str <- "?&case_id=eq.400004"
  param_str <- paste0("?&p_state=eq.", wh_state)
  #param_str <- ""
  #request_url <- paste0(base_url, endpoint)
  request_url <- paste0(base_url, endpoint, param_str)

  resp <- httr::GET(request_url)

  dat <- jsonlite::fromJSON(httr::content(resp, as = "text", encoding = "UTF-8"))

}
