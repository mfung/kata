class Array
  def binary_find(num = nil)
    if length_even?
      self << nil
    end
    if self[mid_index] == num
      return true
    elsif self.length == 1 || self[mid_index] == nil
      return false
    else
      mid_value > num ? self[0...mid_index].binary_find(num) : self[(mid_index+1)..self.length].binary_find(num)
    end
  end
  
  private
  
  def mid_value
    self[self.length/2]
  end
  
  def mid_index
    self.length/2
  end
  
  def length_even?
    self.length % 2 == 0 ? true : false
  end
end