require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest


  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { email: "test@test.com", date_of_birth: "01/01/2023", gender: "M", password: "password", password_confirmation: "password" }
      assert_response 201
    end
  end


end
