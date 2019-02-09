require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get restaurants_index_url
    assert_response :success
  end

  test "should get shop" do
    get restaurants_shop_url
    assert_response :success
  end

  test "should get new" do
    get restaurants_new_url
    assert_response :success
  end

  test "should get create" do
    get restaurants_create_url
    assert_response :success
  end

end
