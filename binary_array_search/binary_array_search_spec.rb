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
  context '1 item array' do
    Given(:array) { [1] }
    context 'with match' do
      Given(:search_number) { 1 }
      When(:result) { array.binary_find(search_number) }
      Then { expect(result).to eql true }
    end
    context 'with no match' do
      Given(:search_number) { 3 }
      When(:result) { array.binary_find(search_number) }
      Then { expect(result).to eql false }
    end
  end
  context '2 item array' do
    Given(:array) { [1,2] }
    context 'with no match' do
      Given(:search_number) { 3 }
      When(:result) { array.binary_find(search_number) }
      Then { expect(result).to eql false }
    end
    context 'match on right' do
      Given(:search_number) { 2 }
      When(:result) { array.binary_find(search_number) }
      Then { expect(result).to eql true }
    end
    context 'match on left' do
      Given(:search_number) { 1 }
      When(:result) { array.binary_find(search_number) }
      Then { expect(result).to eql true }
    end
  end
  context '3 item array' do
    Given(:array) { [1,2,3] }
    context 'with no match' do
      Given(:search_number) { 4 }
      When(:result) { array.binary_find(search_number) }
      Then { expect(result).to eql false }
    end
    context 'with match in middle' do
      Given(:search_number) { 2 }
      When(:result) { array.binary_find(search_number) }
      Then { expect(result).to eql true }
    end
    context 'ith match in right' do
      Given(:search_number) { 3 }
      When(:result) { array.binary_find(search_number) }
      Then { expect(result).to eql true }
    end
    context 'with match in left' do
      Given(:search_number) { 1 }
      When(:result) { array.binary_find(search_number) }
      Then { expect(result).to eql true }
    end
  end
  context 'Complex array' do
    Given(:array) { [1,2,3,5,6,7,9,10,11,23,34,56] }
    context 'with no match' do
      Given(:search_number) { 76 }
      When(:result) { array.binary_find(search_number) }
      Then { expect(result).to eql false }
    end
    context 'with match on left' do
      Given(:search_number) { 3 }
      When(:result) { array.binary_find(search_number) }
      Then { expect(result).to eql true }
    end
    context 'with match on right' do
      Given(:search_number) { 34 }
      When(:result) { array.binary_find(search_number) }
      Then { expect(result).to eql true }
    end
  end
end