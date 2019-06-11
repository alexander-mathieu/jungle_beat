class LinkedList
  attr_reader :head

  def initialize
    @head = head
  end

  def empty?
    @head.nil?
  end

  def prepend(data)
    node = Node.new(data)

    node.next_node = @head
    @head = node
  end

  def insert(position, data)
    node = Node.new(data)

    next_node = locate_node(@head, position)
    locate_node(@head, position - 1).next_node = node
    node.next_node = next_node
  end

  def append(data)
    if empty?
      set_head(data)
    else
      set_tail(data)
    end
  end

  def last_node(node)
    return node if node.tail?
    last_node(node.next_node)
  end

  # def find(position, count)
  # end

  def count
    return 0 if empty?
    count_node(@head, 1)
  end

  def to_string
    string = ""

    if @head.nil?
      string
    else
      @head.to_string(string)
    end
  end

  private

  def locate_node(node, position, counter = 0)
    if position == counter
      return node
    else
      locate_node(node.next_node, position, counter += 1)
    end
  end

  def count_node(node, counter)
    return counter if node.tail?
    count_node(node.next_node, counter += 1)
  end

  def set_head(data)
    @head = new_node(data)
  end

  def set_tail(data)
    last_node(@head).next_node = new_node(data)
  end

  def new_node(data)
    Node.new(data)
  end
end
