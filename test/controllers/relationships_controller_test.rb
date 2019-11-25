require 'test_helper'

class RelationshipsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get relationships_create_url
    assert_response :success
  end

  test "should get detroy" do
    get relationships_detroy_url
    assert_response :success
  end

end
