class Array
  def max_subarray_sum
    max_here = max_now = 0
    self.each do |element|
      max_here = [0,(max_here + element)].max
      max_now = [max_now,max_here].max
    end
    return max_now
  end
end