puts "what is your message?"
message = gets.chomp

puts "what is your shift factor?"
shift_factor = gets.chomp
shift = shift_factor.to_i


def caesar_cipher(message, shift)
  alphabet = Array('a'..'z')
  encrypter = Hash[alphabet.zip(alphabet.rotate(shift))]
  message.chars.map { |c| encrypter.fetch(c, " ")  }
end

puts caesar_cipher(message, shift).join
