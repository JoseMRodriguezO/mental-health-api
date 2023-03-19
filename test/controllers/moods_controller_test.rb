require "test_helper"

class MoodsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "Mood.count", 1 do
      post "/moods.json", params: { user_id: User.first.id, mood_type: "happy", mood_intensity: "low" }
      assert_response 201
    end
  end

  test "show" do
    get "/moods/#{Mood.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["user_id", "mood_type", "mood_intensity", "created_at", "updated_at"], data.keys
  end
end
