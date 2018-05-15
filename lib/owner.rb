class Owner
  attr_accessor :pets

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets.each do |specie_array|
    specie_array[1] << cat
  end
end
