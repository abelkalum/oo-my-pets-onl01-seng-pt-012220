require 'pry'
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
  
  
end