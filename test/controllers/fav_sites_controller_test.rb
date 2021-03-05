require "test_helper"

class FavSitesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fav_sites_index_url
    assert_response :success
  end

  test "should get new" do
    get fav_sites_new_url
    assert_response :success
  end

  test "should get create" do
    get fav_sites_create_url
    assert_response :success
  end

  test "should get show" do
    get fav_sites_show_url
    assert_response :success
  end

  test "should get edit" do
    get fav_sites_edit_url
    assert_response :success
  end

  test "should get update" do
    get fav_sites_update_url
    assert_response :success
  end

  test "should get destroy" do
    get fav_sites_destroy_url
    assert_response :success
  end
end
