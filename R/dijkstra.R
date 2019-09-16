library("igraph")
dijkstra <- function(graph, init_node){
  if (!is.data.frame(graph)){
    stop("the graph must be a vector")
  }
  if (names(graph[1])!="v1" || names(graph[2])!="v2" || names(graph[3])!="w"){
    stop("the graph is not well structured")
  }
  v1 <- graph[,1]
  v2 <- graph[,2]
  w <- graph[,3]
  v2_value <- vector()
  w_value <- vector()
  position <- which(v1 %in% init_node)
  v2_value <- sapply(position,function(j){v2_value <- v2[j]})
  w_value <- sapply(position,function(j){w_value <- w[j]})

  mat <- matrix(nrow = max(v2),ncol = max(v2),byrow = TRUE)
  v2_length <- length(v2)
  for (i in 1:v2_length){
    v2_node_values <- v2[i]
    print (v1[i])
    print (v2[i])
    print (w[i])
    mat[v1[i],v2[i]] == w[i]

  }
  return (mat)
}
wiki_graph <-
  data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
             v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
             w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))
             dijkstra(wiki_graph, 1)
  #This is the graph code
  # adjm1<-matrix(sample(0:1,100,replace=TRUE,prob=c(0.9,01)),nc=6);
  # g1<-graph.adjacency(adjm1);
  # plot(g1)
