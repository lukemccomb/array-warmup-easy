require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)
  dogs.length
end

def name_lengths(dogs)
  new_array = []
  # loop through each dog
  dogs.each do |elem|
  # count how long the name is
  new_array << elem.length
  end
  # return a new array with the length of each dog
  new_array
end

def reverse_dog_names(dogs)
  # need a new array to store reverse dog names
  arry_reverse = []
  # loop through the dogs
  dogs.each { |i| arry_reverse << i.reverse}
  # find reverse dog name
  # put the reverse dog name into the new array
  # return the array built of reverse dog names
  arry_reverse
end

def first_three_dogs_with_each(dogs)
  first_three = []
  counter = 0

  dogs.each do |elem|
    if counter == 3
      break
    end
    first_three << elem
    counter += 1
  end
  first_three
end

def first_three_dogs_without_each(dogs)
  dogs[0..2] # slicing an array
end

def reverse_case_dog_names(dogs)
  # dogs.map { |dog| dog.swapcase }

  inverse_dog_names = []

  dogs.each do |dog|
    new_dog_name = dog.swapcase
    inverse_dog_names.push(new_dog_name)
  end
  inverse_dog_names
end

def sum_of_all_dog_name_lengths(dogs)
  # this is called reduce
  sum = 0

  dogs.each do |dog_name|
    sum = sum + dog_name.length
  end

  sum
end

def dogs_with_long_names(dogs)
  long_dog_names = []

  dogs.each do |dog_name|
    long_dog_names.push(dog_name.length > 4)
  end
  long_dog_names

end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

check("how_many_dogs", how_many_dogs(dogs) == 6)
check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])

