class WelcomeController < ApplicationController
  def index
    @people = Person.all
    @people_groups = PersonShuffler.new(@people).random
  end
end