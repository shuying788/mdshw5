#' A oldest_of_the_year Function
#' This function allows you to access the oldest player in the NBA data, with year given.
#' @param x, input year.
#' @keywords oldest_of_the_year
#' @export
#' @examples input 1950, comes out the oldest player age at that year
#' oldest_of_the_year()
#'
oldest_of_the_year <- function(x) {
  nba <- read.csv("data/Seasons_Stats_NBA.csv")
  selected <- dplyr::select(nba, Age, Player, Year)
  filtered1 <- dplyr::filter(selected, Year == x)
  filtered <- dplyr::filter(filtered1, Age == max(Age))
  arranged <- dplyr::arrange(filtered, desc(Player))
  return(head(arranged, 1)) }
