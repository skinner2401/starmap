require "application_system_test_case"

class IngestersTest < ApplicationSystemTestCase
  setup do
    @ingester = ingesters(:one)
  end

  test "visiting the index" do
    visit ingesters_url
    assert_selector "h1", text: "Ingesters"
  end

  test "creating a Ingester" do
    visit ingesters_url
    click_on "New Ingester"

    click_on "Create Ingester"

    assert_text "Ingester was successfully created"
    click_on "Back"
  end

  test "updating a Ingester" do
    visit ingesters_url
    click_on "Edit", match: :first

    click_on "Update Ingester"

    assert_text "Ingester was successfully updated"
    click_on "Back"
  end

  test "destroying a Ingester" do
    visit ingesters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ingester was successfully destroyed"
  end
end
