require 'YAML'

makes = File.open("car_makes.txt", "r+")
models = File.open("car_models.txt", "r+")

# puts makes.read
# puts models.read



makesArr = []
modelsArr = []
modelOnly = []
makesOnly = []

# split models into array of arrays
models.each do |i|
   modelsArr = i.split('=')
#    puts modelsArr[1]
    modelOnly << modelsArr[1].chomp
end
# puts modelOnly


makes.each do |x|
    makesArr = x.chomp
    # puts makesArr
    # Make hash by targeting values to be keys and values
    makesOnly << x.chomp
end
# puts makesOnly

cars = Hash[makesOnly.zip modelOnly]
puts cars