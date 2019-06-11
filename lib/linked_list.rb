class LinkedList
  attr_reader :head

  def initialize
    @head = head
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
    if @head.nil?
      @head = Node.new(data)
    else
      @head.append(data)
    end
  end

  def count
    if @head.nil?
      0
    else
      @head.count(1)
    end
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
end
