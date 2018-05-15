class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  @@owner_count = 0

  def initialize(pets)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
  end

  def say_species
    puts "I am a #{species}."
  end

  def self.all
    @@all << self
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets.each do |species|
      species[0] << fish
    end
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets.each do |species|
      species[1] << cat
    end
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets.each do |species|
      species[2] << dog
    end
  end
end
