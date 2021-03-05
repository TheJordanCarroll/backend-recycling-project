require "test_helper"

class UserItemCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_item_categories_index_url
    assert_response :success
  end

  test "should get new" do
    get user_item_categories_new_url
    assert_response :success
  end

  test "should get create" do
    get user_item_categories_create_url
    assert_response :success
  end

  test "should get show" do
    get user_item_categories_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_item_categories_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_item_categories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_item_categories_destroy_url
    assert_response :success
  end
end
