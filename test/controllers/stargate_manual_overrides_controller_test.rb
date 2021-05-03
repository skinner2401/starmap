require "test_helper"

class StargateManualOverridesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stargate_manual_override = stargate_manual_overrides(:one)
  end

  test "should get index" do
    get stargate_manual_overrides_url
    assert_response :success
  end

  test "should get new" do
    get new_stargate_manual_override_url
    assert_response :success
  end

  test "should create stargate_manual_override" do
    assert_difference('StargateManualOverride.count') do
      post stargate_manual_overrides_url, params: { stargate_manual_override: { bloacking: @stargate_manual_override.bloacking, end_date: @stargate_manual_override.end_date, end_id: @stargate_manual_override.end_id, original_end_id: @stargate_manual_override.original_end_id, original_start_id: @stargate_manual_override.original_start_id, start_date: @stargate_manual_override.start_date, start_id: @stargate_manual_override.start_id } }
    end

    assert_redirected_to stargate_manual_override_url(StargateManualOverride.last)
  end

  test "should show stargate_manual_override" do
    get stargate_manual_override_url(@stargate_manual_override)
    assert_response :success
  end

  test "should get edit" do
    get edit_stargate_manual_override_url(@stargate_manual_override)
    assert_response :success
  end

  test "should update stargate_manual_override" do
    patch stargate_manual_override_url(@stargate_manual_override), params: { stargate_manual_override: { bloacking: @stargate_manual_override.bloacking, end_date: @stargate_manual_override.end_date, end_id: @stargate_manual_override.end_id, original_end_id: @stargate_manual_override.original_end_id, original_start_id: @stargate_manual_override.original_start_id, start_date: @stargate_manual_override.start_date, start_id: @stargate_manual_override.start_id } }
    assert_redirected_to stargate_manual_override_url(@stargate_manual_override)
  end

  test "should destroy stargate_manual_override" do
    assert_difference('StargateManualOverride.count', -1) do
      delete stargate_manual_override_url(@stargate_manual_override)
    end

    assert_redirected_to stargate_manual_overrides_url
  end
end
