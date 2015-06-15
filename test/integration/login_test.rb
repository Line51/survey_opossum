require 'test_helper'

class LoginTest < ActionDispatch::IntegrationTest
  test "successful login" do
    get sessions_login_path
    assert_select "input[type=password]", 1
    post sessions_login_path, password: "password", email: "fake email"
    assert_redirected_to root_path

    follow_redirect!
    assert response.body.match("Your Surveys")

    assert_select "a[href='#{sessions_logout_path}']", 1

    get sessions_logout_path
    assert_redirected_to sessions_login_path
    follow_redirect!
    assert_select "input[type=password]", 1

  end
end
