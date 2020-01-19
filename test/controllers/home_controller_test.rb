require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get index" do
    get home_index_url
    assert_response :success
    assert_select "title", @base_title
  end

end
