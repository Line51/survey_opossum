require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  test "move a question number down" do
    question = questions(:one)
    assert_equal 1, question.number

    question.move_down
    assert_equal 2, question.number
  end

  test "move a question number up" do
    question = questions(:two)
    assert_equal 2, question.number

    question.move_up
    assert_equal 1, question.number
  end
end
