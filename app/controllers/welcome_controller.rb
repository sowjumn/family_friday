class WelcomeController < ApplicationController
  def index
    @people = Person.where(going: true)
    @people_groups = PersonShuffler.new(@people).random
  end
end