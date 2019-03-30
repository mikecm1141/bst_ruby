require_relative 'node'

class Bst
  def initialize(key)
    @root = Node.new(key)
  end

  def bst_print(node = @root)
    unless node.nil?
      bst_print(node.left)
      puts node.key
      bst_print(node.right)
    end
  end

  def insert(key, node = @root)
    node = Node.new(key) if node.nil?

    if key < node.key
      node.left = insert(key, node.left)
    elsif key > node.key
      node.right = insert(key, node.right)
    end

    node
  end

  def search(key, node = @root)
    if key == node.key
      node
    elsif key < node.key
      search(key, node.left)
    elsif key > node.key
      search(key, node.right)
    end
  end

  def children(key, node = @root)
    nodes = []
    if key == node.key
      { left: node.left, right: node.right }
    else
      children(key, search(key))
    end
  end

  def parent_node(key, node = @root)
    if @root.key == key
      return nil
    elsif node.left.key == key || node.right.key == key
      node
    elsif key < node.key
      parent_node(key, node.left)
    elsif key > node.key
      parent_node(key, node.right)
    end
  end
end
