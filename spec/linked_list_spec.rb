require 'spec_helper'

require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  before :each do
    @node_1        = Node.new('Node 1')
    @node_2        = Node.new('Node 2')
    @linked_list = LinkedList.new
  end

  it 'should exist' do
    expect(@linked_list).to be_a(LinkedList)
  end

  describe 'instance methods' do
    it '.head' do
      expect(@linked_list.head).to eq(nil)
    end

    it '.append' do
      @linked_list.append(@node_1)

      expect(@linked_list.head).to eq(@node_1)
      expect(@linked_list.head.next_node).to eq(nil)

      @linked_list.append(@node_2)

      expect(@linked_list.head).to eq(@node_1)
      expect(@linked_list.head.next_node).to eq(@node_2)
    end

    it '.count' do
      @linked_list.append(@node_1)

      expect(@linked_list.count).to eq(1)

      @linked_list.append(@node_2)

      expect(@linked_list.count).to eq(2)
    end

    it '.to_string' do
      @linked_list.append(@node_1)

      expect(@linked_list.to_string).to eq('Node 1')

      @linked_list.append(@node_2)

      expect(@linked_list.to_string).to eq('Node 1 Node 2')
    end
  end
end
