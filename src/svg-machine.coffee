Elements = require('./elements.coffee')
Graph = require('./graph.coffee')

class SvgMachine
  constructor: (svg, schema, data, client) ->
    @s = svg
    @elements = {}
    @schema = schema
    @machine = data
    @stomp = client
    @graph = new Graph(@machine)

  o:(key, val) ->
    if val == undefined
      return @elements[key]
    else
      @elements[key] = val

  render: () =>
    return new Elements(this)

module.exports = SvgMachine
