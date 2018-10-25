require 'graph'

RSpec.describe Graph do
  let(:graph) { Graph.new }
  let(:vertexA) { Vertex.new('A') }
  let(:vertexB) { Vertex.new('B') }
  let(:vertexC) { Vertex.new('C') }
  let(:vertexD) { Vertex.new('D') }
  let(:vertexE) { Vertex.new('E') }
  let(:vertexF) { Vertex.new('F') }

  it 'adds a vertex to a graph' do
    graph.add_vertex(vertexA)
    graph.add_vertex(vertexB)

    expect(graph.vertices).to match_array([vertexA, vertexB])
  end

  it 'adds a vertex to a graph' do
    graph.add_vertex(vertexA)
    graph.add_vertex(vertexB)
    graph.add_edge(vertexA, vertexB, 10)

    expect(graph.edges[[vertexA, vertexB]]).to eq(10)
  end

  it 'removes a vertex from the graph' do
    graph.add_vertex(vertexA)
    graph.add_vertex(vertexB)
    graph.add_edge(vertexA, vertexB, 10)
    expect(graph.edges).not_to be_empty
    graph.remove_edge(vertexA, vertexB)

    expect(graph.edges).to be_empty
  end

  it 'traverses the graph in a bfs way' do
    graph.add_vertex(vertexA)
    graph.add_vertex(vertexB)
    graph.add_vertex(vertexC)
    graph.add_vertex(vertexD)
    graph.add_vertex(vertexE)
    graph.add_vertex(vertexF)
    graph.add_edge(vertexA, vertexB)
    graph.add_edge(vertexA, vertexC)
    graph.add_edge(vertexB, vertexD)
    graph.add_edge(vertexC, vertexE)
    graph.add_edge(vertexD, vertexF)
    expect(graph.bfs(vertexA)).to eq([vertexA, vertexB, vertexC, vertexD, vertexE, vertexF])
  end

  it 'traverses the graph in a dfs way' do
    graph.add_vertex(vertexA)
    graph.add_vertex(vertexB)
    graph.add_vertex(vertexC)
    graph.add_vertex(vertexD)
    graph.add_vertex(vertexE)
    graph.add_vertex(vertexF)

    graph.add_edge(vertexA, vertexB)
    graph.add_edge(vertexA, vertexC)
    graph.add_edge(vertexB, vertexD)
    graph.add_edge(vertexC, vertexE)
    graph.add_edge(vertexD, vertexF)

    expect(graph.dfs(vertexA)).to eq([vertexA, vertexB, vertexD, vertexF, vertexC, vertexE])
  end
end
