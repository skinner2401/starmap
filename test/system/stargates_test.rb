require "application_system_test_case"

class StargatesTest < ApplicationSystemTestCase
  setup do
    @stargate = stargates(:one)
  end

  test "visiting the index" do
    visit stargates_url
    assert_selector "h1", text: "Stargates"
  end

  test "creating a Stargate" do
    visit stargates_url
    click_on "New Stargate"

    check "Automatic" if @stargate.automatic
    check "Blocking" if @stargate.blocking
    fill_in "End", with: @stargate.end_id
    fill_in "Source", with: @stargate.source
    fill_in "Start", with: @stargate.start_id
    click_on "Create Stargate"

    assert_text "Stargate was successfully created"
    click_on "Back"
  end

  test "updating a Stargate" do
    visit stargates_url
    click_on "Edit", match: :first

    check "Automatic" if @stargate.automatic
    check "Blocking" if @stargate.blocking
    fill_in "End", with: @stargate.end_id
    fill_in "Source", with: @stargate.source
    fill_in "Start", with: @stargate.start_id
    click_on "Update Stargate"

    assert_text "Stargate was successfully updated"
    click_on "Back"
  end

  test "destroying a Stargate" do
    visit stargates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stargate was successfully destroyed"
  end
end
