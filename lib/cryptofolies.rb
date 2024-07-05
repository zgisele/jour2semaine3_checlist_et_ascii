# frozen_string_literal: true

def caesar_cipher(str, shift)
  shift %= 26
  encrypted_str = str.chars.map do |char|
    if char.match?(/[A-Za-z]/)
      base = char.ord < 91 ? 65 : 97
      (((char.ord - base + shift) % 26) + base).chr
    else
      char
    end
  end
  encrypted_str.join
end
# puts caesar_cipher('Bienvenu a dakar', 4)
