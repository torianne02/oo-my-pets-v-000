class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(pets)
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @species = species
    @all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    return "I am a #{species}."
  end

  # def buy_fish(name)
  #   fish = Fish.new(name)
  #   @pets[:fishes] << fish
  # end
  #
  # def buy_cat(name)
  #   cat = Cat.new(name)
  #   @pets.each do |species|
  #     species[1] << cat
  #   end
  # end
  #
  # def buy_dog(name)
  #   dog = Dog.new(name)
  #   @pets.each do |species|
  #     species[2] << dog
  #   end
  # end

  # def walk_dogs
  #   @pets.Dog.mood = "happy"
  # end
  #
  # def play_with_cats
  #   @pets.Cat.mood = "happy"
  # end
  #
  # def feed_fish
  #   @pets.Fish.mood = "happy"
  # end

  # def list_pets
  #   @pets.each do |species|
  #     species.each {|pet_name| puts pet_name(name)}
  #   end
  # end
end
