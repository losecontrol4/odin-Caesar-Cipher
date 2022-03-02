# def ceasar_cipher(string, count)
#     result = string.chars.map do |c|
#         unless ((c in 'a'..'z') || (c in 'A'..'Z'))
#             c
#         else
#             rotate_chr(c, count)
#         end
#     end
#     result.join("")
# end


def ceasar_cipher(string, count) #refer to the commented out version for a more readable one, this line is just an ego trip. I do believe using reduce is better than map in this sitatuion though.
    string.chars.reduce("") {|newString, c| ((c in 'a'..'z') || (c in 'A'..'Z')) ? newString + rotate_chr(c, count) : newString + c }
end
    


def rotate_chr(c, count)
    newASCII = c.ord
    factor =  newASCII > 90 ? factor = 97 : factor = 65 #this is used to shift letters around, either becomes a factor for lower case letters or upper case letters
    newASCII = newASCII - factor + count 
    newASCII = newASCII % 26 + factor
    newASCII.chr
end

p ceasar_cipher("Lxvn xw, fqjc mrm hxd ngynlc!", 17)#feel free to try this out with your own string and value you want it to shift by (negative numbers included)