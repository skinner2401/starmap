require "application_system_test_case"

class StargateManualOverridesTest < ApplicationSystemTestCase
  setup do
    @stargate_manual_override = stargate_manual_overrides(:one)
  end

  test "visiting the index" do
    visit stargate_manual_overrides_url
    assert_selector "h1", text: "Stargate Manual Overrides"
  end

  test "creating a Stargate manual override" do
    visit stargate_manual_overrides_url
    click_on "New Stargate Manual Override"

    check "Bloacking" if @stargate_manual_override.bloacking
    fill_in "End date", with: @stargate_manual_override.end_date
    fill_in "End", with: @stargate_manual_override.end_id
    fill_in "Original end", with: @stargate_manual_override.original_end_id
    fill_in "Original start", with: @stargate_manual_override.original_start_id
    fill_in "Start date", with: @stargate_manual_override.start_date
    fill_in "Start", with: @stargate_manual_override.start_id
    click_on "Create Stargate manual override"

    assert_text "Stargate manual override was successfully created"
    click_on "Back"
  end

  test "updating a Stargate manual override" do
    visit stargate_manual_overrides_url
    click_on "Edit", match: :first

    check "Bloacking" if @stargate_manual_override.bloacking
    fill_in "End date", with: @stargate_manual_override.end_date
    fill_in "End", with: @stargate_manual_override.end_id
    fill_in "Original end", with: @stargate_manual_override.original_end_id
    fill_in "Original start", with: @stargate_manual_override.original_start_id
    fill_in "Start date", with: @stargate_manual_override.start_date
    fill_in "Start", with: @stargate_manual_override.start_id
    click_on "Update Stargate manual override"

    assert_text "Stargate manual override was successfully updated"
    click_on "Back"
  end

  test "destroying a Stargate manual override" do
    visit stargate_manual_overrides_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stargate manual override was successfully destroyed"
  end
end
