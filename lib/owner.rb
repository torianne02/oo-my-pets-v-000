class Owner
  attr_accessor :pets

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets.each do |species|
      species[0] << fish
    end
  end
end
