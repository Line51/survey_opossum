require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  test "get number of results" do
    a = surveys(:one)
    assert_equal 2, a.number_of_results(a.id)
  end
end
