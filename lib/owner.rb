class Owner
  @@all= []
  attr_accessor :pets, :cats, :dogs
  attr_reader :name, :species

  def initialize(species="human", name)
    @species = species
    @name = name
    @@all << self
    @cats = []
    @dogs = []
    
  end
  
  def cats
    Cat.all.select do |cat|
    cat.owner == self
  end
end
  
  def dogs
    Dog.all.select do |dog|
    dog.owner == self
  end
end
  
  def say_species
      "I am a #{@species}."
  end
  
  def self.all
      @@all
  end
  
  def save
    @@all << self
  end
  
  def self.count
      @@all.count
  end
  
  def self.reset_all
      @@all.clear
      @@all
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
   self.dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

 def sell_pets
    self.pets.each do |pet|
      self.pets.delete(cat)
      pet.owner = nil
      pet.mood = "nervous"
    end
  end
  def list_pets
    "I have #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end