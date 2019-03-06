#' A correlogram Function
#' This function allows you to produce the the correlogram for all numeric variables in the data, with year given.
#' @param x, input year.
#' @keywords correlogram
#' @export
#' @examples input 1950, comes out the correlogram of all numerical variables
#' correlogram()
#'
correlogram <- function(x) {
  nba <- read.csv("data/Seasons_Stats_NBA.csv")
  filtered <- dplyr::filter(nba, Year == x)
  numerical <- dplyr::select_if(filtered, is.numeric)
  selected <- dplyr::select(numerical, -Year)
  corr <- stats::cor(selected)
  return(corrplot::corrplot(corr, method="color")) }
