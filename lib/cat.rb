class Cat
  
  attr_accessor :mood, :owner
  attr_reader :name
  
  @@all = []

  def initialize(name="Crookshanks", owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
end