# frozen_string_literal: true

# Implement a caesar cipher that takes in a string and
# the shift factor and then outputs the modified string

def caesar_cipher(text, shift)
  # New string to hold the encrypted text
  modified_text = ''

  # Shift a char in the original text or do nothing if it's not a letter
  text.each_char do |char|
    if char.match(/[a-zA-Z]/)
      # Convert char to ascii value (need conditional for upper and lower case values)
      ascii_base_value = char.ord < 91 ? 'A'.ord : 'a'.ord

      # Shift character through alphabet
      modified_char = ((char.ord - ascii_base_value + shift) % 26 + ascii_base_value).chr
      modified_text += modified_char
    else
      modified_text += char
    end
  end

  modified_text
end

puts caesar_cipher('Hello, World!', 3)
