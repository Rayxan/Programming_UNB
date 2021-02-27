# Note: Time.now returns current time as seconds since epoch
class Fixnum
    def seconds ; self ; end
    def minutes ; self * 60 ; end
    def hours ; self * 60 * 60 ; end
    def ago ; Time.now - self ; end
    def from_now ; Time.now + self ; end
end

puts Time.now

puts 5.minutes.ago

puts 5.minutes - 4.minutes

puts 3.hours.from_now

# to use the method 'minute' in singular without having it created, use method_missing 
class Fixnum
    def method_missing(method_id, *args)
        name = method_id.to_s
        if name =~ /^(second|minute|hour)$/
            self.send(name + 's')
        else
            super #pass the buck to superclass
        end
    end
end

puts 1.minute.ago

# class Fixnum
#     def method_missing(method_id, *args)
#         name = method_id.to_s
#         if name =~ /^(second|minute|hour)$/
#             self.send( )
#         else
#             super
#         end
#     end
# end

# puts 2.days.ago