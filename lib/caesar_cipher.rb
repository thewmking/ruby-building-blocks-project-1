class CaesarCipher
  attr_accessor :message, :shift_factor

  def initialize
    @message = nil
    @shift_factor = nil
  end

  def get_message
    puts "what is your message?"
    @message = gets.chomp

    puts "what is your shift factor?"
    @shift_factor = gets.chomp.to_i
  end

  def caesar_cipher(message, shift_factor)
    alphabet = Array('a'..'z')
    non_caps = Hash[alphabet.zip(alphabet.rotate(shift_factor))]

    alphabet = Array('A'..'Z')
    caps     = Hash[alphabet.zip(alphabet.rotate(shift_factor))]

    encrypter = non_caps.merge(caps)

    encrypted = message.chars.map { |c| encrypter.fetch(c, c)}
    encrypted.join
  end

end
