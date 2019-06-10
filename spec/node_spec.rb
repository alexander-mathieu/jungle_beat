require 'spec_helper'
require './lib/node'

RSpec.describe Node do
  before :each do
    @node = Node.new('data')
  end

  it 'should exist' do
    expect(@node).to be_a(Node)
  end

  describe 'instance methods' do
    it '.data' do
      expect(@node.data).to eq('data')
    end

    it '.next_node' do
      expect(@node.next_node).to eq(nil)
    end
  end
end
