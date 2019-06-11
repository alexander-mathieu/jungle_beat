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

    it '.all' do
      @jungle_beat.append('deep doo ditt')
      @jungle_beat.append('Mississippi')

      expect(@jungle_beat.all).to eq('deep doo ditt')
    end

    it '.append' do
      @jungle_beat.append('deep doo ditt')
      @jungle_beat.append('Mississippi')

      expect(@jungle_beat.list.head.data).to eq('deep')
      expect(@jungle_beat.list.head.next_node.data).to eq('doo')
      expect(@jungle_beat.list.includes?('Mississippi')).to eq(false)
    end

    it '.prepend' do
      @jungle_beat.prepend('deep doo ditt')
      @jungle_beat.prepend('Mississippi')

      expect(@jungle_beat.list.head.data).to eq('ditt')
      expect(@jungle_beat.list.head.next_node.data).to eq('doo')
      expect(@jungle_beat.list.includes?('Mississippi')).to eq(false)
    end

    it '.count' do
      @jungle_beat.append('deep doo ditt')
      @jungle_beat.append('woo hoo shu')

      expect(@jungle_beat.count).to eq(6)
    end

    it '.play' do
      @jungle_beat.append('deep doo ditt woo hoo shu')
      @jungle_beat.append('deep doo ditt woo hoo shu')

      expect(@jungle_beat.play).to eq('')
    end

    it '.voice' do
      expect(@jungle_beat.voice).to eq("Alex")

      @jungle_beat.voice = "Samantha"

      expect(@jungle_beat.voice).to eq("Samantha")

      @jungle_beat.reset_voice

      expect(@jungle_beat.voice).to eq("Alex")
    end

    it '.rate' do
      expect(@jungle_beat.rate).to eq(500)

      @jungle_beat.rate = 200

      expect(@jungle_beat.rate).to eq(200)

      @jungle_beat.reset_rate

      expect(@jungle_beat.rate).to eq(500)
    end
  end
end
