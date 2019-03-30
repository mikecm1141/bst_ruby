require_relative 'node'

class Bst
  def initialize(key)
    @root = Node.new(key)
  end

  def insert(key, node = @root)
    node = Node.new(key) if node.nil?

    if key < node.key
      node.left = insert(key, node.left)
    elsif key > node.key
      node.right = insert(key, node.right)
    end

    return node
  end
end
