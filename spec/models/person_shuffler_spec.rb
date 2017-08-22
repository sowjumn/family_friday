require 'rails_helper'

RSpec.describe PersonShuffler, type: :model do
  let(:my_subject) { PersonShuffler.new(['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'])}
 
  it 'should return an array of the list of items' do
    expect(my_subject.random).to eq([["a", "b", "c", "d", "e"], ["f", "g", "h"]])
  end
end