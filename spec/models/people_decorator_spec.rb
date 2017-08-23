require 'rails_helper'

RSpec.describe PeopleDecorator, type: :model do
  let!(:person_1) { double('me', :name => 'Alexander', :last_name => 'Hamilton')}
  let!(:person_2) { double('me', :name => 'Alexander', :last_name => 'Hammerson')}
  let(:my_subject) { PeopleDecorator.new([person_1, person_2])}
 
  it 'should return an array of the list of items' do
    dec_people = my_subject.run
    # expect(dec_people[0].display_name).to eq('Alexander Hami')
    # expect(dec_people[1].display_name).to eq('Alexander Hamm')
  end
end