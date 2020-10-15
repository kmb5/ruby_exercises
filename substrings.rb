def substrings(word, array)

    array.reduce(Hash.new(0)) do |result_dict, substr|
        if word.downcase.include? substr
            result_dict[substr] += 1
        end
        result_dict
    end
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)