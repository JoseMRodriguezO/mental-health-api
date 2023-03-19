require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    post "/users.json", params: { email: "test@test.com", date_of_birth: "01/01/2023", gender: "M", password: "password", password_confirmation: "password" }
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    assert_response 201

    data = JSON.parse(response.body)
    assert_equal ["jwt", "email", "user_id"], data.keys
  end
end
