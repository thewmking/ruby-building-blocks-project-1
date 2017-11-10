def substrings(text, dictionary)
  text.downcase!
  count = {}
  dictionary.each do |word|
    frequency = text.scan(word).length
    count[word] = frequency unless frequency <1
  end
  count

end

puts "Text please:"
text = gets.chomp
puts "please input dictionary with commas between all words"
dictionary = gets.chomp.split(',')

puts substrings(text, dictionary)
