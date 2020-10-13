require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


puts "Mwahahaha!" # just in case pry is buggy and exits

bloodbrains = Cult.new("Blood Brains", "Seattle", 2020, "We will eat your brains!")
illuminatti = Cult.new("Illuminatti", "Hell", 500, "We don't exist.")

# puts bloodbrains
# puts bloodbrains.name
# puts bloodbrains.location

steve = Follower.new("Steve")
steve.age = 26
rodrigo = Follower.new("Rodrigo")
rodrigo.age = 32
jesse = Follower.new("Jesse")
jesse.age = 27

BloodOath.new(bloodbrains, steve, "2000-06-08")
BloodOath.new(bloodbrains, rodrigo, "1999-09-09")
BloodOath.new(illuminatti, jesse, "2001-05-05")

# puts steve.name
# puts steve.age

# bloodbrains.recruit_follower(steve)

# puts bloodbrains.followers
# binding.pry

# puts Cult.find_by_name("Blood Brains")

Cult.find_by_location("Seattle")
Cult.find_by_founding_year(2020)

steve.cults

steve.join_cult(illuminatti)

Follower.of_a_certain_age(27)


binding.pry