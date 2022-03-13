require "test_helper"

class CartThemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cart_theme = cart_themes(:one)
  end

  test "should get index" do
    get cart_themes_url
    assert_response :success
  end

  test "should get new" do
    get new_cart_theme_url
    assert_response :success
  end

  test "should create cart_theme" do
    assert_difference("CartTheme.count") do
      post cart_themes_url, params: { cart_theme: { status: @cart_theme.status, theme: @cart_theme.theme } }
    end

    assert_redirected_to cart_theme_url(CartTheme.last)
  end

  test "should show cart_theme" do
    get cart_theme_url(@cart_theme)
    assert_response :success
  end

  test "should get edit" do
    get edit_cart_theme_url(@cart_theme)
    assert_response :success
  end

  test "should update cart_theme" do
    patch cart_theme_url(@cart_theme), params: { cart_theme: { status: @cart_theme.status, theme: @cart_theme.theme } }
    assert_redirected_to cart_theme_url(@cart_theme)
  end

  test "should destroy cart_theme" do
    assert_difference("CartTheme.count", -1) do
      delete cart_theme_url(@cart_theme)
    end

    assert_redirected_to cart_themes_url
  end
end
