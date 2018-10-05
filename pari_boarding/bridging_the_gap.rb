# Write a function that takes in a graph and prints out the edges that
# are bridges. A bridge is an edge whose deletion will 
# cause the graph to become disconnected 

class Graph 
    attr_accessor :nodes, :edges 
    def initialize(nodes= [], edges= [])
        @nodes, @edges = nodes, edges 
    end 

    def add_node(node)
        @nodes << node 
    end 

end 

class Node 
    attr_accessor :val, :edge_before_node, :edge_after_node
    def initialize(val, edge_before_node = [], edge_after_node = [])
        @val, @edge_before_node, @edge_after_node = 
        val, edge_before_node, edge_after_node
    end 

end 

class Edge # from_node is the node before edge 
    attr_accessor :from_nodes, :to_nodes #to_node is the node after edge
    def initialize(from_nodes = [], to_nodes =[])
        @from_nodes, @to_nodes = from_nodes, to_nodes
    end 

end 

def find_bridges(graph)
    bridges = []
    graph.edges.each do |edge|
        next_edge = false 

        edge.from_nodes.each do |from_node|
            if from_node.edge_before_node.empty? 
                bridges << edge 
                next_edge = true 
                next 
            end 
        end 
        next if next_edge #don't need to check on that edge 
        #if it's approving to be a bridge already

        edge.to_nodes.each do |to_node|
            if to_node.edge_after_node.empty? 
                bridges << edge 
                next_edge = true 
                next #don't need to check more on the edge
                #if we know it's a bridge
            end 
        end 
        next if next_edge 

    end 
    bridges 
end 

# TEST:
node1, node2,node3 = Node.new(1), Node.new(2), Node.new(3)

edge1, edge2 = Edge.new([node1],[node2]), Edge.new([node1, node3])

graph = Graph.new()
