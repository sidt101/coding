def most_common_int(input)
  hsh = Hash.new(0)
  most_common_count = -1
  most_common = -123
  input.each do |number|
    hsh[number] += 1
    if hsh[number] > most_common_count
      most_common = number
      most_common_count = hsh[number]
    end
  end
  most_common
end
