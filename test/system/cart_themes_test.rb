require "application_system_test_case"

class CartThemesTest < ApplicationSystemTestCase
  setup do
    @cart_theme = cart_themes(:one)
  end

  test "visiting the index" do
    visit cart_themes_url
    assert_selector "h1", text: "Cart themes"
  end

  test "should create cart theme" do
    visit cart_themes_url
    click_on "New cart theme"

    fill_in "Status", with: @cart_theme.status
    fill_in "Theme", with: @cart_theme.theme
    click_on "Create Cart theme"

    assert_text "Cart theme was successfully created"
    click_on "Back"
  end

  test "should update Cart theme" do
    visit cart_theme_url(@cart_theme)
    click_on "Edit this cart theme", match: :first

    fill_in "Status", with: @cart_theme.status
    fill_in "Theme", with: @cart_theme.theme
    click_on "Update Cart theme"

    assert_text "Cart theme was successfully updated"
    click_on "Back"
  end

  test "should destroy Cart theme" do
    visit cart_theme_url(@cart_theme)
    click_on "Destroy this cart theme", match: :first

    assert_text "Cart theme was successfully destroyed"
  end
end
