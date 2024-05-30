#' Build url query
#' @param wh_state State to return data for (default is "all")
#' @returns request_url: query url
#' @export

construct_query_url <- function(wh_state = "all"){

  base_url <- "https://eersc.usgs.gov/api/uspvdb/v1/"

  endpoint <- "projects"

  # filtering examples:
  #projects?&p_cap_ac=gt.50&p_state=eq.OH  Return facilities that have an AC capacity greater than 50 MW and are located in Ohio.
  #projects?&p_state=eq.AZ  Return facilities that are located in Arizona.

  # return only specific columns:
  #"https://eersc.usgs.gov/api/uspvdb/v1/projects?&select=p_name,p_cap_ac,p_state&order=p_name.desc"


  if (wh_state == "all") {
    param_str <- ""
  } else {
    param_str <- paste0("?&p_state=eq.", wh_state)
  }

  request_url <- paste0(base_url, endpoint, param_str)

}
