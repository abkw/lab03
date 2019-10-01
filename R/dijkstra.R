#' The Dijkstra Algorithm
#'
#' @description Dijkstra's algorithm is an algorithm for finding the shortest paths between nodes in a graph.
#'
#' @param graph A Data Frame
#' @param init_node A Numerical Scalar
#'
#' @return Return the shortest path to every other node from the starting node as a vector.
#' @export
#' @seealso More informartion can be found in \url{https://en.wikipedia.org/wiki/Dijkstra\%27s_algorithm}
#' @examples
#' wiki_graph <- data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
#' v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
#' w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))
#' dijkstra(wiki_graph, 1)
#' dijkstra(wiki_graph, 3)
#'

dijkstra <- function(graph, init_node) {

  if (!is.data.frame(graph)) {
    stop("the graph must be a vector")
  }
  if (names(graph[1])!="v1" || names(graph[2])!="v2" || names(graph[3])!="w") {
    stop("the graph is not well structured")
  }
  if (!(init_node %in% graph[,1])) {
    stop("Initial mode is not found in nodes")
  }

  node_items <- unique(graph[,1])
  path <- c()

  for (item in node_items) {
    if (item == init_node) {
      path[item] <- 0 # No path for the same node
    } else {
      path[item] <- 1 / 0 # Set large number for other paths
    }
  }

  while(length(node_items) > 0) {
    current_node <- which(path == min(path[node_items]))
    node_items <- node_items[!node_items %in% current_node]

    for (node in graph[graph[,1] == current_node,][,2]) {
      distance <- graph[,3][which(graph[,1] == current_node & graph[,2] == node)] + path[current_node]
      current_dis <- path[node]
      if (any(distance <= current_dis)) { # use any() for avoid getting two or more values in dist parameter
        path[node] <- distance
      } else {
        path[node] <- current_dis
      }
    }
  }
  return(path)
}



