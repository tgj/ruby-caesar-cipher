def caesar_cipher(msg, shift = 0)
  def _shift(letter, by, lower, upper)
    res = letter.ord + by
    res = upper.ord - (lower.ord - res - 1) if res < lower.ord
    res = res - (lower..upper).to_a.length if upper.ord < res
    res.chr
  end
  msg.split("").map do |l|
    if "a" <= l && l <= "z" then _shift(l, shift, "a", "z")
    elsif "A" <= l && l <= "Z" then _shift(l, shift, "A", "Z")
    else l end
  end.join
end
