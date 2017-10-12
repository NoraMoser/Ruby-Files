require 'yaml'

f1 = File.open("car_makes.txt", "r+")
# puts f1.read
f2 = File.open("car_models.txt", "r+")
# puts f2.read

hash = {}
array = []
array2 = []
array_of_arrays = []



f2.each do |models|
    array = models.split("=")
    array_of_arrays.push(array[1])
end

f1.each do |makes|
    array_of_arrays.push(makes)
    # if makes.firstletter = array_of_arrays[0]
end




puts array_of_arrays


# split the car_models at the = 
# and then .each through makes first see if == index[0] model and assign to hash (hash[make = model])