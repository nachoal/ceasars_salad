# TDD
# PSEUDOCODE - Diego
# INPUT: "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
# OUTPUT: "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"

# create a method that takes a sentence as an argument
def encrypt(sentence, shift_number = -3)
  # create an array containing the alphabet and store in variable
  alphabet = ("A".."Z").to_a
  encrpyted_sentence = []
  # Split the sentence into characters
  # iterate over each character
  sentence.chars.each do |letter|
    if letter != ' '
      # find the index of character in alphabet and store in variable
      index_of_letter = alphabet.index(letter)
      # get the new letter by substracting the index - 3
      new_letter = alphabet[(index_of_letter + shift_number) % 26]
      # store or save into a final array
      encrpyted_sentence << new_letter
    else
      encrpyted_sentence << letter
    end
  end

  # join array and display
  encrpyted_sentence.join
end


# IMPLEMENT and test -


# 1. make it work
# 2. make it beautiful

p encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")

def decrypt(sentence)
  encrypt(sentence, 3)
end

p decrypt("QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")