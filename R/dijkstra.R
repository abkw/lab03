#' The algorithm takes a graph and an initial node and calculates the shortest path from the initial node to every other node in the graph
#'
#' @param graph A Data Frame
#' @param init_node A Numerical Scalar
#'
#' @return Return the shortest path to every other node from the starting node as a vector.
#' @export
#'
#' @import igraph
#' @examples
#' wiki_graph <- data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
#' v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
#' w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))
#' dijkstra(wiki_graph, 1)
#' dijkstra(wiki_graph, 3)
#'
library(igraph)
dijkstra <- function(graph, init_node) {

  if (!is.data.frame(graph)) {
    stop("the graph must be a vector")
  }
  if (names(graph[1])!="v1" || names(graph[2])!="v2" || names(graph[3])!="w") {
    stop("the graph is not well structured")
  }
  v1 <- graph[,1]
  v2 <- graph[,2]
  w <- graph[,3]

  d1 <- data.frame(v1,v2)

  g1 <- graph.data.frame(d1, directed = FALSE)
  temp1 <- shortest.paths(g1, v = init_node, weights = w)
  return(as.vector(temp1))
}

