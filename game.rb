def ask(question)
    print question
    gets
end
verbo = ask("Please enter a verb: ")
nouno = ask("Please enter a noun: ")
adjectivo = ask("Please enter an adjective: ")
unnoun = ask("Please enter another noun: ")

puts "One day, I decided to learn to #{verbo} in Ruby. 
So I turned on my #{nouno} and logged in Andela. The programmers were
really #{adjectivo}. In no time, I'd learn to program a simple #{unnoun}."
