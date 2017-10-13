require 'yaml'

f1 = File.open("car_makes.txt", "r+")
# puts f1.read
f2 = File.open("car_models.txt", "r+")
# puts f2.read

hash = Hash.new
array = []
array2 = []



f2.each do |models|
    array = models.split("=")
    # puts array
    f1.each do |makes|
        array2 = makes[0]
        # puts array2
        # if array[0] == array2
            hash[makes] = [array[1]]
        # end
    end
    # array_of_arrays.push(array[1])
end

puts hash
# f1.each do |makes|
#     array_of_arrays.push(makes)
#     # if makes.firstletter = array_of_arrays[0]
# end




# puts array_of_arrays


# split the car_models at the = 
# and then .each through makes first see if == index[0] model and assign to hash (hash[make = model])