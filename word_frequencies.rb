# 1. First, read the file and save it as string and delete all the punctuation.
# 2. downcase and split it
# 4. create a loop
# 5. if the hash does not have this word, just add word as key and value one
# 6. if harsh has this word, just plus 1

puts "type lyrics"

text = File.read("trump_speech.txt").downcase.gsub(/[^A-Za-z0-9\s]/i,"")
# print text

words = text.split
# print word

def word_counter(words)
 hash = {}
   words.each do |word|
    if hash.key?(word)
      hash[word] += 1
    else
      hash[word] = 1
    end
  end
  hash.sort_by {|k,v| v}.to_h
end

puts word_counter(words)
