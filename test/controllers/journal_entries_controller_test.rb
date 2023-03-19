require "test_helper"

class JournalEntriesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/journal_entries.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal JournalEntry.count, data.length
  end

  test "create" do
    assert_difference "JournalEntry.count", 1 do
      post "/journal_entries.json", params: { user_id: User.first.id, title: "First Journal", content: "This is my first journal" }
      assert_response 201
    end
  end

  test "show" do
    get "/journal_entries/#{JournalEntry.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["user_id", "title", "content", "created_at", "updated_at"], data.keys
  end
end
