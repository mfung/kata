require 'rspec'
require 'rspec-given'

require './binary_array_search'

describe 'Binary Array Search' do
  context 'empty array' do
    Given(:array) { [] }
    Given(:search_number) { 1 }
    When(:result) { array.binary_find(search_number) }
    Then { expect(result).to eql false }
  end
  context '1 item array with match' do
    Given(:array) { [1] }
    Given(:search_number) { 1 }
    When(:result) { array.binary_find(search_number) }
    Then { expect(result).to eql true }
  end
  context '1 item array with no match' do
    Given(:array) { [1] }
    Given(:search_number) { 3 }
    When(:result) { array.binary_find(search_number) }
    Then { expect(result).to eql false }
  end
  context '2 item array with no match' do
    Given(:array) { [1,2] }
    Given(:search_number) { 3 }
    When(:result) { array.binary_find(search_number) }
    Then { expect(result).to eql false }
  end
  context '2 item array with match on right' do
    Given(:array) { [1,2] }
    Given(:search_number) { 2 }
    When(:result) { array.binary_find(search_number) }
    Then { expect(result).to eql true }
  end
  context '2 item array with match on left' do
    Given(:array) { [1,2] }
    Given(:search_number) { 1 }
    When(:result) { array.binary_find(search_number) }
    Then { expect(result).to eql true }
  end
  context '3 item array with no match' do
    Given(:array) { [1,2,3] }
    Given(:search_number) { 4 }
    When(:result) { array.binary_find(search_number) }
    Then { expect(result).to eql false }
  end
  context '3 item array with match in middle' do
    Given(:array) { [1,2,3] }
    Given(:search_number) { 2 }
    When(:result) { array.binary_find(search_number) }
    Then { expect(result).to eql true }
  end
  context '3 item array with match in right' do
    Given(:array) { [1,2,3] }
    Given(:search_number) { 3 }
    When(:result) { array.binary_find(search_number) }
    Then { expect(result).to eql true }
  end
  context '3 item array with match in left' do
    Given(:array) { [1,2,3] }
    Given(:search_number) { 1 }
    When(:result) { array.binary_find(search_number) }
    Then { expect(result).to eql true }
  end
  context 'Complex array with no match' do
    Given(:array) { [1,2,3,5,6,7,9,10,11,23,34,56] }
    Given(:search_number) { 76 }
    When(:result) { array.binary_find(search_number) }
    Then { expect(result).to eql false }
  end
  context 'Complex array with match on left' do
    Given(:array) { [1,2,3,5,6,7,9,10,11,23,34,56] }
    Given(:search_number) { 3 }
    When(:result) { array.binary_find(search_number) }
    Then { expect(result).to eql true }
  end
  context 'Complex array with match on right' do
    Given(:array) { [1,2,3,5,6,7,9,10,11,23,34,56] }
    Given(:search_number) { 34 }
    When(:result) { array.binary_find(search_number) }
    Then { expect(result).to eql true }
  end
end