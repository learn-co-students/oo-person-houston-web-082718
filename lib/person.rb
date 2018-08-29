# your code goes here
require 'pry'
class Person
  attr_reader :name
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness_point = 8
    @hygiene = 8
  end

  def bank_account
    @bank_account
  end

  def happiness
    @happiness_point
  end

  def happiness=(n)
    if n > 10
      @happiness_point = 10
    elsif n < 0
      @happiness_point = 0
    else
      @happiness_point = n
    end
  end


  def hygiene=(n)
    if n > 10
      @hygiene = 10
    elsif n < 0
      @hygiene = 0
    else
      @hygiene = n
    end
  end

  def hygiene
    @hygiene
  end

  def happy?
    @happiness_point > 7
  end
  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
      self.hygiene += 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end
  def work_out
    self.happiness += 2
    self.hygiene -= 3
    '♪ another one bites the dust ♫'
  end

  def call_happiness
    self.happiness +=3
  end

  def call_friend(friend)
    @friend = friend.name
    friend.call_happiness
    call_happiness
    "Hi #{@friend}! It's #{@name}. How are you?"
  end

  def happiness_change(point)
    self.happiness += point
  end

  def start_conversation(friend,topic)
    if topic == "politics"
      friend.happiness_change(-2)
      happiness_change(-2)
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      friend.happiness_change(1)
      happiness_change(1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end



end

andrew = Person.new("Andrew")
trung = Person.new("Trung")
# binding.pry