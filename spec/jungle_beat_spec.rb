require 'spec_helper'

require './lib/linked_list'
require './lib/jungle_beat'

RSpec.describe JungleBeat do
  before :each do
    @jungle_beat = JungleBeat.new
  end

  it 'should exist' do
    expect(@jungle_beat).to be_a(JungleBeat)
  end

  describe 'instance methods' do
    it '.list' do
      expect(@jungle_beat.list.head).to eq(nil)
      expect(@jungle_beat.list).to be_a(LinkedList)
    end

    it '.append' do
      @jungle_beat.append("deep doo ditt")

      expect(@jungle_beat.list.head.data).to eq("deep")
      expect(@jungle_beat.list.head.next_node.data).to eq("doo")
    end

    it '.count' do
      @jungle_beat.append("deep doo ditt")
      @jungle_beat.append("woo hoo shu")

      expect(@jungle_beat.count).to eq(6)
    end
  end
end
