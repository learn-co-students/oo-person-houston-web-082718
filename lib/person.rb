# your code goes hererequire 'pry'

class Person

  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

 def initialize(name)
   @name = name
   @bank_account = 25
   @happiness = 8
   @hygiene = 8
 end

 def happiness=(point)
   if point > 10
     @happiness = 10
   elsif point < 0
     @happiness = 0
   else @happiness = point
   end
 end

 def hygiene=(point)
   if point > 10
     @hygiene = 10
   elsif point < 0
     @hygiene = 0
   else @hygiene = point
   end
 end

 def clean?
   if @hygiene > 7
     true
   else
     false
   end
 end

 def happy?
   if @happiness > 7
     true
   else
     false
   end
 end

 def get_paid(salary)
   @bank_account += salary
   "all about the benjamins"
 end

 def take_bath
   self.hygiene += 4
   "♪ Rub-a-dub just relaxing in the tub ♫"
 end

 def work_out
   self.happiness += 2
   self.hygiene -= 3
   "♪ another one bites the dust ♫"
 end

 def call_friend(friend)
   friend.happiness += 3
   self.happiness += 3
   "Hi #{friend.name}! It's #{@name}. How are you?"
 end

 def start_conversation(partner, topic)
   if topic == "politics"
     partner.happiness -= 2
     self.happiness -= 2
     "blah blah partisan blah lobbyist"
   elsif topic == "weather"
     partner.happiness += 1
     self.happiness += 1
     "blah blah sun blah rain"
   else
     "blah blah blah blah blah"
   end
 end
end
