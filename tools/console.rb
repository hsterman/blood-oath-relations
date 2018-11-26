require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Cult.new("Heaven's Gate", 1974, "San Diego", "We like comets")
c2 = Cult.new("Squishy Squirrels", 2018, "New York", "Keep it squishy!")
c3 = Cult.new("Waco", 1993, "Texas", "We are wacko for Waco!")
c4 = Cult.new("Apple", 1993, "New York", "Think different")

f1 = Follower.new("Marshall Applewhite", 100, "Not applicable")
f2 = Follower.new("Rick", 25, "I am nuts for nuts")
f3 = Follower.new("David Koresh", 47, "Yikes!")
f4 = Follower.new("Antoine", 125, "Yearn for the sea")
f5 = Follower.new("Mike", 33, "Milk!")


b1 = BloodOath.new(f1, c1, "1974-01-01")
b2 = BloodOath.new(f2, c2, "2018-07-04")
b3 = BloodOath.new(f3, c3, "1993-11-25")
b4 = BloodOath.new(f2, c1, "1978-02-14")
b5 = BloodOath.new(f3, c1, "1979-03-16")
b6 = BloodOath.new(f4, c4, "1979-06-18")
b7 = BloodOath.new(f1, c2, "1975-01-01")
b8 = BloodOath.new(f1, c3, "1976-01-01")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
