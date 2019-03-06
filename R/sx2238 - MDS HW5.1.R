#' A player_age Function
#' This function allows you to access a data point of interest in the dataset for some player, with year given.
#' @param x, input year.
#' @keywords player_age
#' @export
#' @examples input 1950, comes out a list of players age at that year
#' player_age()
#'
player_age <- function(x) {
  nba <- read.csv("data/Seasons_Stats_NBA.csv")
  selected <- dplyr::select(nba, Age, Player, Year)
  filtered <- dplyr::filter(selected, Year == x)
  return(filtered)}
