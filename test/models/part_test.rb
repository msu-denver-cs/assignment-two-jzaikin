require 'test_helper'

class PartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  test 'empty name' do
    s = Part.create({name: ''})
    refute s.valid?
    refute s.save
    assert_equal({name: ['has already been taken']},
      s.errors.messages)
    end
end
