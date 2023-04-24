def caesar_cipher(string, key)
    string.split("").map do |character|
        if (character>='a' && character <='z')
           (((character.ord + key - 'a'.ord) %26) + 'a'.ord).chr            
        elsif  (character>='A' && character <='Z')
            (((character.ord + key - 'A'.ord) %26) + 'A'.ord).chr            
        else
            character
        end
    end.join()
end

puts caesar_cipher("abcd",6)