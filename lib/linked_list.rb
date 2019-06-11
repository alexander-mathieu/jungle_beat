class LinkedList
  attr_reader :head

  def initialize
    @head = head
  end

  def empty?
    @head.nil?
  end

  def prepend(node_data)
    node = new_node(node_data)
    node.next_node = @head
    @head = node
  end

  def insert(position, node_data)
    node = new_node(node_data)
    next_node = locate_node(@head, position)
    locate_node(@head, position - 1).next_node = node
    node.next_node = next_node
  end

  def append(node_data)
    if empty?
      set_head(node_data)
    else
      set_tail(node_data)
    end
  end

  def last_node(node)
    if node.tail?
      return node
    else
      last_node(node.next_node)
    end
  end

  def find(start_position, count)
    node = locate_node(@head, start_position)
    if count == 1
      return node.data
    else
      stringify_node(node.next_node, node.data, count -= 1)
    end
  end

  def count
    if empty?
      return 0
    else
      count_node(@head, 1)
    end
  end

  def to_string
    if empty?
      return ""
    elsif @head.tail?
      return @head.data
    else
      stringify_node(@head.next_node, @head.data)
    end
  end

  private

  def locate_node(node, position, count = 0)
    if position == count
      return node
    else
      locate_node(node.next_node, position, count += 1)
    end
  end

  def stringify_node(node, data_string, end_position = nil, count = 1)
    if node.tail? || end_position == count
      return concat(data_string, node)
    else
      stringify_node(node.next_node, concat(data_string, node), end_position, count += 1)
    end
  end

  def concat(data_string, node)
    "#{data_string} #{node.data}"
  end

  def count_node(node, count)
    if node.tail?
      return count
    else
      count_node(node.next_node, count += 1)
    end
  end

  def set_head(node_data)
    @head = new_node(node_data)
  end

  def set_tail(node_data)
    last_node(@head).next_node = new_node(node_data)
  end

  def new_node(node_data)
    Node.new(node_data)
  end
end
