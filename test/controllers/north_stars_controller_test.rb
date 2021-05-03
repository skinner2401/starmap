require "test_helper"

class NorthStarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @north_star = north_stars(:one)
  end

  test "should get index" do
    get north_stars_url
    assert_response :success
  end

  test "should get new" do
    get new_north_star_url
    assert_response :success
  end

  test "should create north_star" do
    assert_difference('NorthStar.count') do
      post north_stars_url, params: { north_star: { data_source: @north_star.data_source, description: @north_star.description, name: @north_star.name, solar_system_id: @north_star.solar_system_id } }
    end

    assert_redirected_to north_star_url(NorthStar.last)
  end

  test "should show north_star" do
    get north_star_url(@north_star)
    assert_response :success
  end

  test "should get edit" do
    get edit_north_star_url(@north_star)
    assert_response :success
  end

  test "should update north_star" do
    patch north_star_url(@north_star), params: { north_star: { data_source: @north_star.data_source, description: @north_star.description, name: @north_star.name, solar_system_id: @north_star.solar_system_id } }
    assert_redirected_to north_star_url(@north_star)
  end

  test "should destroy north_star" do
    assert_difference('NorthStar.count', -1) do
      delete north_star_url(@north_star)
    end

    assert_redirected_to north_stars_url
  end
end
