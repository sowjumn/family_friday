class PersonShuffler
  attr_accessor :people
  MIN_GROUP = 3
  MAX_GROUP = 5

  def initialize(people)
    @people = people
  end

  def random
    shuffle
    group_arr = []
    list = []
    get_group_number(group_arr, @people.length, MAX_GROUP)
    b_i = 0
    group_arr.each do |n|
      list.push(@people[b_i..b_i+n-1])
      b_i += n
    end
    list
  end

  def shuffle

  end

  def get_group_number(gr_arr,len,group_size)
    return if len == 0
    count = len/group_size
    count.times { gr_arr.push(group_size) }
    len = len % group_size
    if len >= MIN_GROUP && len < MAX_GROUP
      group_size = len
    elsif len < MIN_GROUP && len > 0
      len += gr_arr.pop
      group_size = MAX_GROUP - 1
    end
    get_group_number(gr_arr,len,group_size)
  end
end