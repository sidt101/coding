def pair_sum(input_array, target_sum)
  hsh = {}
  input_array.each_with_index do |number, index|
    hsh[target_sum - number] = index
  end

  input_array.each_with_index do |number, index|
    if !hsh[number].nil? && hsh[number] != index
      return [number, target_sum - number]
    end
  end
  []
end
