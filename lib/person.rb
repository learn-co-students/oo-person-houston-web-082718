# your code goes here
require 'pry'
class Person
  attr_reader :name
  def initialize(name)
    @name = name
    @balance = 25
    @happiness_point = 8
    @hygiene_point = 8
  end

  def happy?
    @happiness_point > 7
  end
  def clean?
    @hygiene_point > 7
  end

  def get_paid(salary)
    @balance += salary
    puts "all about the benjamins"
  end

  def take_bath
    if @hygiene_point < 6
      @hygiene_point += 4
    else
      @hygiene_point = 10
    end
    puts '♪ Rub-a-dub just relaxing in the tub ♫'
  end
  def work_out
    if @happiness_point < 8
      @happiness_point += 2
    else
      @happiness_point = 10
    end
    if @hygiene_point < 3
      @hygiene_point = 0
    else
      @hygiene_point -= 3
    end
    puts '♪ another one bites the dust ♫'
  end

  def call_happiness
    if @happiness_point < 7
    @happiness_point += 3
    else
      @happiness_point = 10
    end
  end

  def call_friend(friend)
    @friend = friend.name
    friend.call_happiness
    call_happiness
    puts 'Hello ' + @friend
  end
  def happiness(point)

    if (@happiness_point + point) > 10
      @happiness_point = 10
    elsif
      (@happiness_point + point) < 0
      @happiness_point = 0
    else
      @happiness_point += point
    end
  end
  def start_conversation(friend,topic)
    if topic == "politics"
      friend.happiness(-2)
      happiness(-2)
      puts "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      friend.happiness(2)
      happiness(2)
      puts "blah blah sun blah rain"
    else
      puts  "blah blah blah blah blah"
    end
  end



end

andrew = Person.new("Andrew")
trung = Person.new("Trung")

binding.pry