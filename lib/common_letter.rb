def get_most_common_letter(text)
  counter = Hash.new(0)
  text.gsub!(" ", "")
  text.chars.each do |char|
    counter[char] += 1
  end
  array = counter.to_a.sort_by { |k, v| v }[-1][0]
end

# Intended output:
#
p get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
