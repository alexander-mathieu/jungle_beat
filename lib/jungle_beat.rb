class JungleBeat
  attr_reader :list

  def initialize
    @list = new_linked_list
  end

  def append(stringified_nodes)
    node_data_array = stringified_nodes.split(' ')
    node_data_array.each { |node_data| @list.append(node_data) }
  end

  def count
    @list.count
  end

  private

  def new_linked_list
    LinkedList.new
  end
end
