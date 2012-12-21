require 'rspec'
require 'rspec-given'

require './max_subarray'

describe 'Max Sub Array' do
  context 'array responds to max_subarray_sum' do
    Given(:array) { [] }
    Then { expect(array.respond_to?(:max_subarray_sum)).to eql true }
  end
end