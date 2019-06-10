require 'spec_helper'

require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  before :each do
    @node        = Node.new('data')
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
      @linked_list.append(@node)

      expect(@linked_list.head).to eq(@node)
      expect(@linked_list.head.next_node).to eq(nil)
    end

    it '.count' do
      @linked_list.append(@node)

      expect(@linked_list.count).to eq(1)
    end

    it '.to_string' do
      @linked_list.append(@node)

      expect(@linked_list.to_string).to eq('data')
    end
  end
end
