require "test_helper"

class StargatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stargate = stargates(:one)
  end

  test "should get index" do
    get stargates_url
    assert_response :success
  end

  test "should get new" do
    get new_stargate_url
    assert_response :success
  end

  test "should create stargate" do
    assert_difference('Stargate.count') do
      post stargates_url, params: { stargate: { automatic: @stargate.automatic, blocking: @stargate.blocking, end_id: @stargate.end_id, source: @stargate.source, start_id: @stargate.start_id } }
    end

    assert_redirected_to stargate_url(Stargate.last)
  end

  test "should show stargate" do
    get stargate_url(@stargate)
    assert_response :success
  end

  test "should get edit" do
    get edit_stargate_url(@stargate)
    assert_response :success
  end

  test "should update stargate" do
    patch stargate_url(@stargate), params: { stargate: { automatic: @stargate.automatic, blocking: @stargate.blocking, end_id: @stargate.end_id, source: @stargate.source, start_id: @stargate.start_id } }
    assert_redirected_to stargate_url(@stargate)
  end

  test "should destroy stargate" do
    assert_difference('Stargate.count', -1) do
      delete stargate_url(@stargate)
    end

    assert_redirected_to stargates_url
  end
end
