require "test_helper"

class CollectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get collections_index_url
    assert_response :success
  end
end
