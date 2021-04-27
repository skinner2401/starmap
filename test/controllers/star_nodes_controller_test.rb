require "test_helper"

class StarNodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @star_node = star_nodes(:one)
  end

  test "should get index" do
    get star_nodes_url
    assert_response :success
  end

  test "should get new" do
    get new_star_node_url
    assert_response :success
  end

  test "should create star_node" do
    assert_difference('StarNode.count') do
      post star_nodes_url, params: { star_node: { description: @star_node.description, name: @star_node.name, north_star_id: @star_node.north_star_id } }
    end

    assert_redirected_to star_node_url(StarNode.last)
  end

  test "should show star_node" do
    get star_node_url(@star_node)
    assert_response :success
  end

  test "should get edit" do
    get edit_star_node_url(@star_node)
    assert_response :success
  end

  test "should update star_node" do
    patch star_node_url(@star_node), params: { star_node: { description: @star_node.description, name: @star_node.name, north_star_id: @star_node.north_star_id } }
    assert_redirected_to star_node_url(@star_node)
  end

  test "should destroy star_node" do
    assert_difference('StarNode.count', -1) do
      delete star_node_url(@star_node)
    end

    assert_redirected_to star_nodes_url
  end
end
