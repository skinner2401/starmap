require "application_system_test_case"

class StarNodesTest < ApplicationSystemTestCase
  setup do
    @star_node = star_nodes(:one)
  end

  test "visiting the index" do
    visit star_nodes_url
    assert_selector "h1", text: "Star Nodes"
  end

  test "creating a Star node" do
    visit star_nodes_url
    click_on "New Star Node"

    fill_in "Description", with: @star_node.description
    fill_in "Name", with: @star_node.name
    fill_in "North star", with: @star_node.north_star_id
    click_on "Create Star node"

    assert_text "Star node was successfully created"
    click_on "Back"
  end

  test "updating a Star node" do
    visit star_nodes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @star_node.description
    fill_in "Name", with: @star_node.name
    fill_in "North star", with: @star_node.north_star_id
    click_on "Update Star node"

    assert_text "Star node was successfully updated"
    click_on "Back"
  end

  test "destroying a Star node" do
    visit star_nodes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Star node was successfully destroyed"
  end
end
