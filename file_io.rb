require 'yaml'

f1 = File.open('car_makes.txt', 'r+')
# puts f1.read
f2 = File.open('car_models.txt', 'r+')
# puts f2.read

hash = Hash.new
array = []
array2 = []



f2.each do |models|
    array = models.split('=')
    # puts array
    f1.each do |makes|
        array2 = makes.chomp
        # puts array2
            hash[array2] = [array[1].chomp]
    end
end
print "My hash: #{hash}"



# split the car_models at the = 
# and then .each through makes first see if == index[0] model and assign to hash (hash[make = model])