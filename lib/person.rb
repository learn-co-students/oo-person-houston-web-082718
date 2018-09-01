require 'pry'


class Person

  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene
  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(n)
     @happiness = n
     @happiness = 10 if @happiness > 10
     @happiness = 0 if @happiness < 0
  end

  def hygiene=(n)
    @hygiene = n
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def happy?
    if @happiness > 7
      true
    else 
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else 
      false
    end
  end

  def get_paid(amount)
    @bank_account = @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3

    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      self.happiness -= 2
      person.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      self.happiness += 1
      person.happiness += 1
      'blah blah sun blah rain'
    else topic == 'other'
      'blah blah blah blah blah'
    end

  end


  
end