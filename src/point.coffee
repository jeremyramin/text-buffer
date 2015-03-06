module.exports =
class Point
  @zero: ->
    new Point(0, 0)

  constructor: (row, column) ->
    unless this instanceof Point
      return new Point(row, column)
    @row = row
    @column = column

  compare: (other) ->
    if @row > other.row
      1
    else if @row < other.row
      -1
    else if @column > other.column
      1
    else if @column < other.column
      -1
    else
      0

  copy: ->
    new Point(@row, @column)

  isZero: ->
    @row is 0 and @column is 0

  traverse: (delta) ->
    if delta.row is 0
      new Point(@row, @column + delta.column)
    else
      new Point(@row + delta.row, delta.column)

  toString: ->
    "(#{@row}, #{column})"
