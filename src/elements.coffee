class Elements

  constructor: (bx) ->

    Text = (label, x, y, body, attribs) ->
      bx.o(label, bx.s.text(x, y, body)).attr(attribs)

    Rect = (label, x, y, w, h, rx, ry, attribs) ->
      bx.o(label, bx.s.rect(x, y, w, h, rx, ry)).attr(attribs)

    Circle = (label, cx, cy, r, attribs) ->
      bx.o(label, bx.s.circle(cx, cy, r)).attr(attribs)

    Token = Circle
    Transition = Rect

    Text 'title', 110, 15, "#{bx.schema} - #{bx.machine.description}",
      {
        stroke: "#000",
        strokeWidth: 1
      }

    Rect 'bg', 100, 25, 750, 512, 15, 15,
      {
        fill: "#eeeeff",
        stroke: "#000",
        strokeWidth: 2
      }

    graph_x = 150
    graph_y = -20
    _scale = 1.2

    tx_w = 5
    tx_l = 20
    tx_r = 5

    _r = 8
    _w = 2
    _x = (v) -> graph_x + v * _scale
    _y = (v) -> graph_y + v * _scale

    for label, t of bx.machine.tokens
      s = Token label, _x(t.x), _y(t.y), _r,
        {
          fill: "#facade",
          stroke: "#000",
          strokeWidth: _w
        }

      s.data('attributes', p)

    for label, p of bx.machine.places
      t = Token label, _x(p.x), _y(p.y), _r,
        {
          fill: "#facade",
          stroke: "#000",
          strokeWidth: _w
        }

      t.data('attributes', p)

    for label, tx of bx.machine.transitions
      t = Transition label, _x(tx.x), _y(tx.y), tx_w, tx_l, tx_r, tx_r,
        {
          fill: "#facade",
          stroke: "#000",
          strokeWidth: _w
        }

      t.data('attributes', tx)

module.exports = Elements
