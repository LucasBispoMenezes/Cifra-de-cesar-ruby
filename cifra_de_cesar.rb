# frozen_string_literal: true

ALPHABET = ('A'..'z').to_a

def ceasar_cipher_encrypt(phrase = '', displacement = 0)
  cipher = ''
  phrase.each_char do |letter|
    idx = ALPHABET.find_index(letter)
    cipher += idx ? (ALPHABET[idx + displacement]) : letter
  end
  cipher
end

def ceasar_cipher_decrypt(phrase = '', displacement = 0)
  cipher = ''
  phrase.each_char do |letter|
    idx = ALPHABET.find_index(letter)
    cipher += idx ? (ALPHABET[idx - displacement]) : letter
  end
  cipher
end

puts ceasar_cipher_encrypt('ceasar_cipher_encrypt', 1)
puts ceasar_cipher_decrypt('Gmbdp Gvtjpo |!', 1)
