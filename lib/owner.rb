class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(pets)
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @species = "human"
    @@all << self
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

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each {|species, pets| pets.each {|pet| pet.mood = "nervous"}}
    @pets.initialize
  end

  # def list_pets
  #   @pets.each do |species|
  #     species.each {|pet_name| puts pet_name(name)}
  #   end
  # end
end
