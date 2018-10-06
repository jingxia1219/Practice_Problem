# Tarjan's Topological Sort:
# implement topological sort using Targan's Algorithm 

# The algorithm loops through each node of the graph, in an 
# arbitary order, initiating a DFS that terminates when it 
# hits any node that has already been visted since the beginning of the 
# topological sort or if the node has no out_edges:

# Each node n gets prepended to the output list L only after 
# considering all other children of the node. 
# means when n is added to the list, all depedents are already in L list

