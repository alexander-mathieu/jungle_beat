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
end
