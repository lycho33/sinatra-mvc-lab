class PigLatinizer
    def piglatinize(text)
        text.split(" ").map {|word| piglatinize_text(word)}.join(" ")
    end

    def vowels(character)
        character.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_text(word)
        if vowels(word[0])
            word + "way"
        else 
            i = word.index(/[aAeEiIoOuU]/)
            const = word.slice(0..i-1) #-1 means subtract the i and only get word[0] => "p"
            leftover = word.slice(i..word.length) #index 1 - 4(word.length) => "ork"
            leftover + const + "ay"
        end
    end
end