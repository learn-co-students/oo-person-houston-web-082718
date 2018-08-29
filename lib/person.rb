# your code goes here
require 'pry'
class Person
	attr_accessor :bank_account
	attr_reader :name, :happiness, :hygiene

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness=(index)
		if index <= 0
			@happiness = 0
		elsif index >= 10
			@happiness = 10
		else
			@happiness = index
		end
	end

	def hygiene=(index)
		if index <= 0
			@hygiene = 0
		elsif index >= 10
			@hygiene = 10
		else
			@hygiene = index
		end
		#binding.pry
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

	def get_paid(salary)
		@bank_account += salary
		return "all about the benjamins"
	end

	def take_bath
		self.hygiene += 4
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.hygiene -= 3
		self.happiness += 2
		return "♪ another one bites the dust ♫"
	end

	def call_friend(person)
		self.happiness += 3
		person.happiness += 3
		"Hi #{self.name}! It's #{person.name}. How are you?"
		"Hi #{person.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person, topic)
		if topic == "politics"
			self.happiness -= 2
			person.happiness -= 2
			return "blah blah partisan blah lobbyist"
		elsif topic == "weather"
			self.happiness += 1
			person.happiness += 1
			return "blah blah sun blah rain"
		else
			return "blah blah blah blah blah"
		end
	end

end












