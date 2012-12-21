class Array
  def binary_find(num = nil)
    even_length_add_nil
    
    if mid_value == num
      return true
    elsif self.length == 1 || mid_value == nil
      return false
    else
      mid_value > num ? self[0...mid_index].binary_find(num) : self[(mid_index+1)..self.length].binary_find(num)
    end
  end
  
  private
  
  def even_length_add_nil
    if length_even?
      self << nil
    end
  end
  
  def mid_value
    self[mid_index]
  end
  
  def mid_index
    self.length/2
  end
  
  def length_even?
    self.length % 2 == 0 ? true : false
  end
end