=begin
Implement a caesar cipher that takes in a string and 
the shift factor and then outputs the modified string
=end

def caesar_cipher(text, shift)
  # New string to hold the encrypted text
  modified_text = ""

  text.each_char do |char|
    if char.match(/[a-zA-z]/)
      
    else
      modified_text += char
    end
  end
end
