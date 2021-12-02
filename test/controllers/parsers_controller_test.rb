require "test_helper"

class ParsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get parsers_new_url
    assert_response :success
  end
end
