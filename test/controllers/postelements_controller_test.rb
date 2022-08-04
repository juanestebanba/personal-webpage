require "test_helper"

class PostelementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postelement = postelements(:one)
  end

  test "should get index" do
    get postelements_url
    assert_response :success
  end

  test "should get new" do
    get new_postelement_url
    assert_response :success
  end

  test "should create postelement" do
    assert_difference('Postelement.count') do
      post postelements_url, params: { postelement: { content: @postelement.content, element_type: @postelement.element_type, position: @postelement.position, post_id: @postelement.post_id } }
    end

    assert_redirected_to postelement_url(Postelement.last)
  end

  test "should show postelement" do
    get postelement_url(@postelement)
    assert_response :success
  end

  test "should get edit" do
    get edit_postelement_url(@postelement)
    assert_response :success
  end

  test "should update postelement" do
    patch postelement_url(@postelement), params: { postelement: { content: @postelement.content, element_type: @postelement.element_type, position: @postelement.position, post_id: @postelement.post_id } }
    assert_redirected_to postelement_url(@postelement)
  end

  test "should destroy postelement" do
    assert_difference('Postelement.count', -1) do
      delete postelement_url(@postelement)
    end

    assert_redirected_to postelements_url
  end
end
