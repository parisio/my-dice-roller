#create 'Die' class and instantiate Die object with number of sides as argument.
class Die
  
  def initialize(sides)
    @sides = sides
#now we will be able to roll a die with any number of sides as long as the number of sides is passed in.
  end

#generate a randomized die roll, and add 1 because dice do not have a side 0.
  def random_die_roll
    rand(@sides) + 1
  end
#define roll method with default argument of 1. 
  def roll(number=1)
#create an empty array for the dice we will roll    
    roll_array = []
#call 'times' method to run the following code as many times as number's value.     
    number.times do
#insert the randomly generated die roll into roll_array
      roll_array << random_die_roll
    end
#assign 0 to the 'total' variable, which will hold the value of our combined rolls.
    total = 0
#loop through each item in roll_array and add to total.
    roll_array.each do |roll|
      new_total = total + roll
      total = new_total
    end
    total
  end
end

#instantiate some die into our class in a Constant (a.k.a. include some pre-written die for user.) 
SIX_SIDED_DIE = Die.new(6)
EIGHT_SIDED_DIE = Die.new(8)
TEN_SIDED_DIE = Die.new(10)
TWENTY_SIDED_DIE = Die.new(20)

puts "Rolling a six sided die once."
puts SIX_SIDED_DIE.roll

puts "Rolling a 20 sided die twice."
puts TWENTY_SIDED_DIE.roll(2)

puts "Rolling an 8 sided die five times."
puts EIGHT_SIDED_DIE.roll(5)