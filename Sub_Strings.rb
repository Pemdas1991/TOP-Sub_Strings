require "pry"

def substrings(word, dictionary)
    answerHash = Hash.new #create answer hash
    dictionary.each do |dword| #for each item in the dictionary
       newWord = word.gsub(dword,'*') #replace dictionary item in phrase with *
       n1 = newWord.split('') #split into array
       n2 = n1.select {|key| key == '*'} #select only * from array
       if n2.length > 0
            answerHash[dword] =  n2.length #number of times dict item occurs is length of array
       end
    end
    p answerHash
    answerHash
end





dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)