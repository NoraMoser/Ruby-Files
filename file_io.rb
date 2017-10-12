require 'yaml'

f1 = File.open("car_makes.txt", "r+")
puts f1.read
f2 = File.open("car_models.txt", "r+")
puts f2.read

hash = {}
File.open("car_models.txt") do |ok|
  hash.push(ok)
  File.open("car_makes.txt") do |dunno|
    hash.push(dunno)
  end
end


puts hash