require 'set'
class Vertex
  attr_reader :name, :neighbors

  def initialize(name)
    @name = name
    @neighbors = []
  end
end

class Graph
  attr_reader :vertices, :directed, :edges

  def initialize(directed = true)
    @vertices = []
    @edges = {}
    @directed = directed
  end

  def add_vertex(vertex)
    @vertices << vertex
  end

  def add_edge(from, to, size = 1)
    from.neighbors << to
    @edges[[from, to]] = size
    if undirected?
      to.neighbors << from
      @edges[[to, from]] = size
    end
  end

  def remove_edge(from, to)
    from.neighbors.delete(to)
    @edges.delete([from, to])
    if undirected?
      to.neighbors.delete(from)
      @edges.delete([to, from])
    end
  end

  def bfs(source)
    stack = [source]
    visited = Set[]
    while !stack.empty?
      vertex = stack.shift
      visited << vertex
      stack.push(*vertex.neighbors)
    end
    visited.to_a
  end

  def dfs(source)
    stack = [source]
    visited = Set[]
    while !stack.empty?
      vertex = stack.shift
      visited << vertex
      stack.unshift(*vertex.neighbors)
    end
    visited.to_a
  end

  private

  def undirected?
    !directed
  end
end
