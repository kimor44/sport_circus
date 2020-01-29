require 'test_helper'

class SportShowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sport_shows_index_url
    assert_response :success
  end

end
