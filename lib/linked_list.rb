class LinkedList
  attr_reader :head

  def initialize
    @head = head
  end

  def append(node)
    if @head.nil?
      @head = node
    else
      @head.append(node)
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
