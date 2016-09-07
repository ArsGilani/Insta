require 'test_helper'

class MarksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get marks_new_url
    assert_response :success
  end

  test "should get create" do
    get marks_create_url
    assert_response :success
  end

  test "should get destroy" do
    get marks_destroy_url
    assert_response :success
  end

end
