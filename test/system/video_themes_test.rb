require "application_system_test_case"

class VideoThemesTest < ApplicationSystemTestCase
  setup do
    @video_theme = video_themes(:one)
  end

  test "visiting the index" do
    visit video_themes_url
    assert_selector "h1", text: "Video themes"
  end

  test "should create video theme" do
    visit video_themes_url
    click_on "New video theme"

    fill_in "Status", with: @video_theme.status
    fill_in "Video", with: @video_theme.video
    click_on "Create Video theme"

    assert_text "Video theme was successfully created"
    click_on "Back"
  end

  test "should update Video theme" do
    visit video_theme_url(@video_theme)
    click_on "Edit this video theme", match: :first

    fill_in "Status", with: @video_theme.status
    fill_in "Video", with: @video_theme.video
    click_on "Update Video theme"

    assert_text "Video theme was successfully updated"
    click_on "Back"
  end

  test "should destroy Video theme" do
    visit video_theme_url(@video_theme)
    click_on "Destroy this video theme", match: :first

    assert_text "Video theme was successfully destroyed"
  end
end
