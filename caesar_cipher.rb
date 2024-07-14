def caesar_cipher(msg, shift = 0)
  def _shift(letter, by, limit)
    (letter.ord + by > limit.ord ? letter.ord + by - ("a".."z").to_a.length : letter.ord + by).chr
  end
  msg.split("").map do |l|
    if "a" <= l && l <= "z" then _shift(l, shift, "z")
    elsif "A" <= l && l <= "Z" then _shift(l, shift, "Z")
    else l end
  end.join
end
