class Node
  attr_accessor :key, :left, :right

  def initialize(key)
    @key = key
    @left = nil
    @right = nil
  end

  def sibling(key)
    key == left.key ? right : left
  end

  def has_children?
    left || right ? true : false
  end
end
