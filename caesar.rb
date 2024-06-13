

def caesar_cypher(string, shift)
    alphabet_lowercase = ('a'..'z').to_a
    alphabet_uppercase = ('A'..'Z').to_a


    string.chars.map do |char| #.chars return an array of characters in a string
        if alphabet_lowercase.include?(char)
            alphabet_lowercase[(alphabet_lowercase.index(char) + shift) % 26]
        elsif alphabet_uppercase.include?(char)
            alphabet_uppercase[(alphabet_uppercase.index(char) + shift) % 26]
        else
            char
        end
    end.join
end