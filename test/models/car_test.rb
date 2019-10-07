require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'empty name' do
    s = Car.create({make: ''})
    refute s.valid?
    refute s.save
    assert_equal({make: ['is too short (minimum is 2 characters)']},
      s.errors.messages)
  end
end
