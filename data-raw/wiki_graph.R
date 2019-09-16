#' A dataset called wiki_graph used to check the output of dijkstra algorithm.
#'
#' @format A data frame with 54 rows and 3 variables:
#' \describe{
#'   \item{v1}{A vector inside the wiki_graph dataframe containing the first edge.}
#'   \item{v2}{A vector inside the wiki_graph dataframe containing the second edge.}
#'   \item{w}{A vector inside the wiki_graph dataframe containing the weight between different edges.}
#'   ...
#' }
#' @source \url{https://en.wikipedia.org/wiki/Graph/}
"wiki_graph"
wiki_graph <-
  data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
             v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
             w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))
usethis::use_data(wiki_graph, overwrite = TRUE)
