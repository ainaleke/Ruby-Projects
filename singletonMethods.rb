FULLMOON=FALSE

class AnimalSounds

  def initialize (aspeech)
    @speech=aspeech #Assign the argument values to the instance variable
    puts ("This class Shows different animal sounds")
  end

  def talk
    puts (@speech)
  end
end

cat=AnimalSounds.new("Mieow")
dog=AnimalSounds.new("Woof")
budgie=AnimalSounds.new("Who's the ")
werewolf=AnimalSounds.new("Growl")

def werewolf.howl #singleton method
  if FULLMOON then
  puts ("How--oo-oo-oo!")
  #puts talk
  else
    talk
  end
end

dog.talk
werewolf.talk
werewolf.howl

class Box
  def initialize (aBox)
    @box=aBox
  end

  def items
    puts ("The Item inside the box is #{@box}")
  end
end

starprize=Box.new ("Star Prize") #object
puts starprize.object_id
#create a singleton method
class << starprize  #create a singleton class in which only the object starprize contains all the required functions needed
  def congratulate #singleton method
  puts ("You've won a fabulous holiday in Grimsby!")
  end
end
