def substrings(string, dictionary)
    word_counting = Hash.new(0)
    string = string.downcase
    dictionary.each {|entry|
        entry = entry.downcase
        number_finds = string.scan(entry)
        if number_finds.length != 0
            word_counting[entry] = number_finds.length
        end
    }
    word_counting
end 


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)


 