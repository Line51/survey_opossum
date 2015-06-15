require 'test_helper'

class FormsControllerTest < ActionController::TestCase
  setup do
    session[:user_id] = authors(:one).id
  end

  test "should get new" do
    get :new, survey_id: surveys(:one).id
    assert_response :success
  end

  test "should create form" do
    assert_difference('Form.count') do
      post :create, form: { survey_id: 1 }
    end
  end

end
