class Node
  attr_reader   :data
  attr_accessor :next_node

  def initialize(data)
    @data      = data
    @next_node = nil
  end

  def tail?
    @next_node.nil?
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
