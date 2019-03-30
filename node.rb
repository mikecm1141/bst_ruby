class Node
  attr_reader :key
  attr_accessor :left, :right

  def initialize(key)
    @key = key
    @left = nil
    @right = nil
  end

  def sibling(key)
    key == left.key ? right : left
  end
end
