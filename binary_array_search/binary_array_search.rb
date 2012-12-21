class Array
  def binary_find(num = nil)
    if self.length % 2 == 0
      self << nil
    end
    if self[self.length/2] == num
      return true
    elsif self.length == 1 || self[self.length/2] == nil
      return false
    else
      mid_value = self[self.length/2]
      mid_index = self.length/2
      mid_value > num ? self[0...mid_index].binary_find(num) : self[(mid_index+1)..self.length].binary_find(num)
    end
  end
end