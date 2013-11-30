require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get mycourses" do
    get :mycourses
    assert_response :success
  end

end
