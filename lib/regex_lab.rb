def starts_with_a_vowel?(word)
    pattern = /\A[aeiou]/i
    !!(pattern.match(word))
end

def words_starting_with_un_and_ending_with_ing(text)
    pattern = /\Aun\w+ing\z/i
    text.scan(/\b\w+\b/).select { |word| pattern.match?(word) }
end  

def words_five_letters_long(text)
    pattern = /\b\w{5}\b/
    text.scan(pattern)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    pattern = /\A[A-Z].*[[:punct:]]\z/
    !!(pattern.match(text))
end

def valid_phone_number?(phone)
    pattern = /^\+?[\d\s()-]+$/
    !!(pattern.match(phone))
end
