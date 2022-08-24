def caesar_cipher(string, shift)
  cipher_text = ""
  string.each_char do |letter|
    if letter.ord.between?(65, 90) || letter.ord.between?(97, 122)
      new_value = letter.ord + shift

      if new_value.between?(91, 96) || new_value > 122
        new_value -= 26
      end
      cipher_text += new_value.chr
    else
      cipher_text += letter.chr
    end
  end
  cipher_text
end

p caesar_cipher("What a string!", 5) #=> Bmfy f xywnsl!