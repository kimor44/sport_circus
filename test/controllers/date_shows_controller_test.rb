require 'test_helper'

class DateShowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_show = date_shows(:one)
  end

  test "should get index" do
    get date_shows_url
    assert_response :success
  end

  test "should get new" do
    get new_date_show_url
    assert_response :success
  end

  test "should create date_show" do
    assert_difference('DateShow.count') do
      post date_shows_url, params: { date_show: { date: @date_show.date } }
    end

    assert_redirected_to date_show_url(DateShow.last)
  end

  test "should show date_show" do
    get date_show_url(@date_show)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_show_url(@date_show)
    assert_response :success
  end

  test "should update date_show" do
    patch date_show_url(@date_show), params: { date_show: { date: @date_show.date } }
    assert_redirected_to date_show_url(@date_show)
  end

  test "should destroy date_show" do
    assert_difference('DateShow.count', -1) do
      delete date_show_url(@date_show)
    end

    assert_redirected_to date_shows_url
  end
end
