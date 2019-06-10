class Node
  attr_reader :data,
              :next_node

  def initialize(data)
    @data  = data
    @next_node = nil
  end

  def append(node)
    if @next_node.nil?
      @next_node = node
    else
      @next_node.append
    end
  end

  def count(total)
    if @next_node.nil?
      total
    else
      total += 1
      @next_node.count(total)
    end
  end

  def to_string(string)
    string = "#{string} " + @data

    if @next_node.nil?
      string.strip
    else
      @next_node.to_string(string)
    end
  end
end
