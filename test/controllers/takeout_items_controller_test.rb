require "test_helper"

class TakeoutItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get takeout_items_new_url
    assert_response :success
  end

  test "should get index" do
    get takeout_items_index_url
    assert_response :success
  end

  test "should get edit" do
    get takeout_items_edit_url
    assert_response :success
  end

  test "should get show" do
    get takeout_items_show_url
    assert_response :success
  end
end
