# your code goes here
require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

 def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
   @name = name
   @bank_account = bank_account
   @happiness = happiness
   @hygiene = hygiene
 end
  def happiness=(happiness)
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    else
      @happiness = happiness
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
  def happy?
    if happiness > 7
      return true
    else
      return false
    end
  end
  def clean?
    if hygiene > 7
      return true
    else false
    end
  end

  def take_bath
      self.hygiene += 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

  def work_out
    self.hygiene -=  3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      person.happiness -= 2
      self.happiness -=2
      "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      person.happiness += 1
      self.happiness += 1
      'blah blah sun blah rain'
    else
      "blah blah blah blah blah"
      end
    end











end
