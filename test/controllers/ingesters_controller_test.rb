require "test_helper"

class IngestersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingester = ingesters(:one)
  end

  test "should get index" do
    get ingesters_url
    assert_response :success
  end

  test "should get new" do
    get new_ingester_url
    assert_response :success
  end

  test "should create ingester" do
    assert_difference('Ingester.count') do
      post ingesters_url, params: { ingester: {  } }
    end

    assert_redirected_to ingester_url(Ingester.last)
  end

  test "should show ingester" do
    get ingester_url(@ingester)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingester_url(@ingester)
    assert_response :success
  end

  test "should update ingester" do
    patch ingester_url(@ingester), params: { ingester: {  } }
    assert_redirected_to ingester_url(@ingester)
  end

  test "should destroy ingester" do
    assert_difference('Ingester.count', -1) do
      delete ingester_url(@ingester)
    end

    assert_redirected_to ingesters_url
  end
end
