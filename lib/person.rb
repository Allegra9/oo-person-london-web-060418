class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name, :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

#sets happiness max 10, min 0
  def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

#sets hygiene max 10, min 0
  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
    end

  def happy?
    self.happiness > 7   #? true : false
  end

  def clean?
    self.hygiene > 7   #? true : false
  end

  def get_paid(salary)
    self.bank_account += salary
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
    #friend = Person.new(name)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(chatty_person, topic)
    if topic == "politics"
      self.happiness -=2
      chatty_person.happiness -=2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness +=1
      chatty_person.happiness +=1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end



end
