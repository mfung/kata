require 'rspec'
require 'rspec-given'

require './max_subarray'

describe 'Max Sub Array' do
  context 'array responds to max_subarray_sum' do
    Given(:array) { [] }
    Then { expect(array.respond_to?(:max_subarray_sum)).to eql true }
  end
  
  context '1 item array' do
    Given(:array) { [1] }
    When(:result) { array.max_subarray_sum }
    Then { expect(result).to eql 1 }
  end
  
  context '2 item array' do
    Given(:array) { [1,2] }
    When(:result) { array.max_subarray_sum }
    Then { expect(result).to eql 3 }
  end
  
  context 'complex 3 item array' do
    Given(:array) { [1,2,-3] }
    When(:result) { array.max_subarray_sum }
    Then { expect(result).to eql 3 }
  end
  
  context '4 item array' do
    Given(:array) { [1,2,-3,4] }
    When(:result) { array.max_subarray_sum }
    Then { expect(result).to eql 4 }
  end
  
  context 'complex array' do
    Given(:array) { [-12,2,3,-23,4,-2,67,-3] }
    When(:result) { array.max_subarray_sum }
    Then { expect(result).to eql 69 }
  end
  
  context 'another complex array' do
    Given(:array) { [-2,1,-3,4,-1,2,1,-5,4] }
    When(:result) { array.max_subarray_sum }
    Then { expect(result).to eql 6 }
  end
end