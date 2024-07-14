def caesar_cipher(msg, shift = 0)
  msg.downcase.split("").map do |l|
    if "a" <= l && l <= "z"
      (l.ord + shift > "z".ord ? l.ord + shift - ("a".."z").to_a.length : l.ord + shift).chr
    else
      l
    end
  end.join.capitalize
end
