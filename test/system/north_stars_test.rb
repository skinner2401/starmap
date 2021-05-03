require "application_system_test_case"

class NorthStarsTest < ApplicationSystemTestCase
  setup do
    @north_star = north_stars(:one)
  end

  test "visiting the index" do
    visit north_stars_url
    assert_selector "h1", text: "North Stars"
  end

  test "creating a North star" do
    visit north_stars_url
    click_on "New North Star"

    fill_in "Data source", with: @north_star.data_source
    fill_in "Description", with: @north_star.description
    fill_in "Name", with: @north_star.name
    fill_in "Solar system", with: @north_star.solar_system_id
    click_on "Create North star"

    assert_text "North star was successfully created"
    click_on "Back"
  end

  test "updating a North star" do
    visit north_stars_url
    click_on "Edit", match: :first

    fill_in "Data source", with: @north_star.data_source
    fill_in "Description", with: @north_star.description
    fill_in "Name", with: @north_star.name
    fill_in "Solar system", with: @north_star.solar_system_id
    click_on "Update North star"

    assert_text "North star was successfully updated"
    click_on "Back"
  end

  test "destroying a North star" do
    visit north_stars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "North star was successfully destroyed"
  end
end
