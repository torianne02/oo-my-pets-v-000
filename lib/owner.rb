class Owner
  attr_accessor :pets

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets.each do |specie_array|
      specie_array[0] << fish
    end
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets.each do |specie_array|
      specie_array[1] << cat
    end
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets.each do |specie_array|
      specie_array[2] << dog
    end
  end
end
