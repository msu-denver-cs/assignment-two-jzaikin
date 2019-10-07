require 'test_helper'

class MakeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'empty name' do
    s = Make.create({name: ''})
    refute s.valid?
    refute s.save
    assert_equal({name: ['is too short (minimum is 2 characters)']},
      s.errors.messages)
    end
end
