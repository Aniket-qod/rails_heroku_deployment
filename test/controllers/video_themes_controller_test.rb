require "test_helper"

class VideoThemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_theme = video_themes(:one)
  end

  test "should get index" do
    get video_themes_url
    assert_response :success
  end

  test "should get new" do
    get new_video_theme_url
    assert_response :success
  end

  test "should create video_theme" do
    assert_difference("VideoTheme.count") do
      post video_themes_url, params: { video_theme: { status: @video_theme.status, video: @video_theme.video } }
    end

    assert_redirected_to video_theme_url(VideoTheme.last)
  end

  test "should show video_theme" do
    get video_theme_url(@video_theme)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_theme_url(@video_theme)
    assert_response :success
  end

  test "should update video_theme" do
    patch video_theme_url(@video_theme), params: { video_theme: { status: @video_theme.status, video: @video_theme.video } }
    assert_redirected_to video_theme_url(@video_theme)
  end

  test "should destroy video_theme" do
    assert_difference("VideoTheme.count", -1) do
      delete video_theme_url(@video_theme)
    end

    assert_redirected_to video_themes_url
  end
end
