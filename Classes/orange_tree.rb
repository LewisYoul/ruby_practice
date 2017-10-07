#Exercise from Learn to Program by Chris Pine - Chapter 13.6

class OrangeTree

  attr_accessor :height, :age, :oranges

  def initialize(age=0, height=15)
    @age = age
    @height = height
    @oranges = 0
  end

  def height
    puts "Your tree is #{@height} metres tall!"
  end

  def one_year_passes
    @age += 1
    @height += 3
    grow_oranges
  end

  def dead_tree
    puts "What a shame, this tree is dead now!"
  end

  def pick_an_orange
    if @oranges > 0
      @oranges -= 1
      puts "Just ate an orange, mmm so delicious!"
    else
      puts "There aren't any oranges to pick, oh no!"
    end
  end

  def count_the_oranges
    puts "Oh look, there are #{@oranges} oranges on the tree..."
  end

  def summary
    puts "This tree is #{@age} years old,\nit is #{@height} metres tall and has #{@oranges} juicy oranges hanging from its branches."
  end

  private

  def grow_oranges
    @oranges = 0
    @oranges += 12
  end
end

tree = OrangeTree.new

tree.one_year_passes
tree.pick_an_orange
tree.count_the_oranges
tree.summary
tree.one_year_passes
tree.summary
