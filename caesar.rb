print "Input text: "
input = gets.chomp.to_s

print "Input key: "
key = gets.chomp.to_i

def caesar_cipher(str, movement)
  output = ""

  inputArr = str.split("")
  key = movement.to_i

  inputArr.each do |letter|
    inputIndex = letter.ord
    if inputIndex >= 65 and inputIndex <= 90
      outputIndex = (inputIndex + key - 65) % 26 + 65
    elsif inputIndex >= 97 and inputIndex <= 122
      outputIndex = (inputIndex + key - 97) % 26 + 97
    else
      outputIndex = inputIndex
    end
    output += outputIndex.chr
  end

  output
end

puts "Ciphered text: #{caesar_cipher(input, key)}" 

