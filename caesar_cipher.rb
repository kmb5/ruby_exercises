def caesar_cipher(str, num)

    result = []

    alphabet = "a".."z"
    alphabet = alphabet.to_a

    str.split('').each { |c|

        if alphabet.find_index(c.downcase).nil?
            result.push(c)
        else
            if c == c.upcase
                index = alphabet.find_index(c.downcase)
                offset = (index + num + 26) % alphabet.length
                result.push(alphabet[offset].upcase)
            else
                index = alphabet.find_index(c)
                offset = (index + num + 26) % alphabet.length
                result.push(alphabet[offset])
            end
        end
    }

    return result.join('')
    
end


puts caesar_cipher("What a string!", 5)
puts caesar_cipher("Bmfy f xywnsl!", -5)