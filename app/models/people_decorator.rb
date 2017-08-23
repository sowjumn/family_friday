class PeopleDecorator
  def initialize(people)
    @people = people
  end

  def run
    h = Hash.new { |h,k| h[k] = Array.new }
    @people.each  do |p| 
      h[p.name].push("#{p.name} #{p.last_name}")
    end
    puts h.inspect
  end
end
