require 'spec_helper'

require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  before :each do
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
      @linked_list.append('Node 1')

      expect(@linked_list.head.data).to eq('Node 1')
      expect(@linked_list.head.next_node).to eq(nil)

      @linked_list.append('Node 2')

      expect(@linked_list.head.data).to eq('Node 1')
      expect(@linked_list.head.next_node.data).to eq('Node 2')
    end

    it '.count' do
      @linked_list.append('Node 1')

      expect(@linked_list.count).to eq(1)

      @linked_list.append('Node 2')

      expect(@linked_list.count).to eq(2)
    end

    it '.to_string' do
      @linked_list.append('Node 1')

      expect(@linked_list.to_string).to eq('Node 1')

      @linked_list.append('Node 2')

      expect(@linked_list.to_string).to eq('Node 1 Node 2')
    end

    it '.prepend' do
      @linked_list.append('Node 1')
      @linked_list.append('Node 2')

      @linked_list.prepend('Node 3')

      expect(@linked_list.to_string).to eq('Node 3 Node 1 Node 2')
    end

    it '.insert' do
      @linked_list.append('Node 1')
      @linked_list.append('Node 2')

      @linked_list.insert(1, 'Node 3')

      expect(@linked_list.to_string).to eq('Node 1 Node 3 Node 2')
    end
  end
end
