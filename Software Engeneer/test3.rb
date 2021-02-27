#       Testing:
# .each_with_object({})
# << 
# diferent types of output

word = []

[:foo, :bar, :jazz].each_with_object({}) do |item|
    word << item.to_s.upcase
end

print word
puts "#{word}"

puts "\n--------------------------------"
#       Testing
#.map
print (1..10).map {|item| item **2} #number^2


