class Owner
  attr_accessor :pets
  @@all = []

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
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
