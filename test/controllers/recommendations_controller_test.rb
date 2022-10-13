require "test_helper"

class RecommendationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recommendations_new_url
    assert_response :success
  end

  test "should get index" do
    get recommendations_index_url
    assert_response :success
  end

  test "should get edit" do
    get recommendations_edit_url
    assert_response :success
  end
end
