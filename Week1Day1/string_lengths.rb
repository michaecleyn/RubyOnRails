def counter(x)
  x.length
end

puts counter("michael")

puts "I am a Rubyist"[7]

# print "Fear is the path to the dark side".split('')

puts "Michael" << "Cleyn"

puts "Michael cleyn is awesome".sub('awesome', 'best')

puts "Michael is the best but Michael is also cool".gsub('Michael', 'Anne')

puts 'RubyMonk Is Pretty Brilliant'.gsub(/[A-Z]/,'0')

puts 'RubyMonk Is Pretty Brilliant'.match(/ ./, 9)


