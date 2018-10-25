class LongestIncreasingSubsequence
  def initialize
    @L = {}
  end

  def length_of_lis(nums)
    @L.clear
    edges = {}
    grid = {}
    for i in 0...nums.length
      grid[nums[i]] = 0
      for j in (i + 1)...nums.length
        if nums[i] < nums[j]
          if edges[nums[i]].nil?
            edges[nums[i]] = [nums[j]]
          else
            edges[nums[i]] << nums[j]
          end
        end
      end
      edges[nums[i]] = [] if edges[nums[i]].nil?
    end
    puts edges
    nums.map{ |num| L(num, edges) }.max
  end

  def L(i, edges)
    return @L[i] unless @L[i].nil?
    if edges[i].count == 0
      @L[i] = 1
      return @L[i]
    end
    max = edges[i].map do |neighbor|
      1 + L(neighbor, edges)
    end.max
    @L[i] = max
  end
end

