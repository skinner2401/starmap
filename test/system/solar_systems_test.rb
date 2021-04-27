require "application_system_test_case"

class SolarSystemsTest < ApplicationSystemTestCase
  setup do
    @solar_system = solar_systems(:one)
  end

  test "visiting the index" do
    visit solar_systems_url
    assert_selector "h1", text: "Solar Systems"
  end

  test "creating a Solar system" do
    visit solar_systems_url
    click_on "New Solar System"

    fill_in "Description", with: @solar_system.description
    fill_in "Galaxy", with: @solar_system.galaxy_id
    fill_in "Name", with: @solar_system.name
    click_on "Create Solar system"

    assert_text "Solar system was successfully created"
    click_on "Back"
  end

  test "updating a Solar system" do
    visit solar_systems_url
    click_on "Edit", match: :first

    fill_in "Description", with: @solar_system.description
    fill_in "Galaxy", with: @solar_system.galaxy_id
    fill_in "Name", with: @solar_system.name
    click_on "Update Solar system"

    assert_text "Solar system was successfully updated"
    click_on "Back"
  end

  test "destroying a Solar system" do
    visit solar_systems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solar system was successfully destroyed"
  end
end
