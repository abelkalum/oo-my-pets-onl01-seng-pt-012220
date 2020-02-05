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
    @cats
  end
  
  def dogs
    @dogs
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
    name = Cat.new(name)
    @pets[:cats] << name 
  end 

  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name 
  end 

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, name_array|
      name_array.each do |pet|
        pet.mood = "nervous"
      end 
    end
    @pets = {}
  end

  def list_pets
    "I have #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end