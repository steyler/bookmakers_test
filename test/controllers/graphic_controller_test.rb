require "test_helper"

class GraphicControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get graphic_index_url
    assert_response :success
  end
end
