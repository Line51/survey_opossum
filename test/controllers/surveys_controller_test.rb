require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    session[:user_id] = authors(:one).id
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { author_id: @survey.author_id, description: @survey.description, name: "survey3" }
    end

    assert_redirected_to root_path
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    patch :update, id: @survey, survey: { author_id: @survey.author_id, description: @survey.description, name: @survey.name }
    assert_redirected_to root_path
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end
