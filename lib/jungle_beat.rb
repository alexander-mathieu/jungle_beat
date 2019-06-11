class JungleBeat
  attr_reader   :list, :rate, :voice
  attr_accessor :rate, :voice

  def initialize
    @list  = new_linked_list
    @rate  = 500
    @voice = "Alex"
  end

  def all
    @list.to_string
  end

  def append(stringified_nodes)
    node_data_array = stringified_nodes.split(' ')
    count = 0

    node_data_array.each do |node_data|
      if valid_beats.include?(node_data)
        count += 1
        @list.append(node_data)
      end
    end
    count
  end

  def prepend(stringified_nodes)
    node_data_array = stringified_nodes.split(' ')
    count = 0

    node_data_array.each do |node_data|
      if valid_beats.include?(node_data)
        count += 1
        @list.prepend(node_data)
      end
    end
    count
  end

  def count
    @list.count
  end

  def play
    `say -r #{@rate} -v #{@voice} #{all}`
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Alex"
  end

  private

  def new_linked_list
    LinkedList.new
  end

  def valid_beats
    ['tee', 'dee', 'deep',
     'bop', 'boop', 'la',
     'deep', 'doo', 'ditt',
     'woo', 'hoo', 'shu']
  end
end
