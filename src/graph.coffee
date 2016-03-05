class Graph
  constructor: (machine) ->
    @machine = machine
    @nodes = []
    @node_map = {}

    @edges = []
    @edge_names = []

    @tokens = machine['tokens']
    #@tokens.each { |t| @nodes.push token_to_node(t) }

    #machine['places'].each { |p| @nodes.push  place_to_node(p) }
    #machine['transitions'].each { |t| @nodes.push transition_to_node(t) }
    #machine['transitions'].each { |t| @edges.concat(transition_to_edges(t)) }

  place_to_node:(p) ->

  transition_to_node:(t) ->

  transition_to_edges:(t) ->

module.exports = Graph
