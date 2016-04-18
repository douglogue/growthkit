require 'test_helper'

class PromoBarsControllerTest < ActionController::TestCase
  setup do
    @promo_bar = promo_bars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promo_bars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promo_bar" do
    assert_difference('PromoBar.count') do
      post :create, promo_bar: { headline: @promo_bar.headline, link: @promo_bar.link, title: @promo_bar.title, user_id: @promo_bar.user_id }
    end

    assert_redirected_to promo_bar_path(assigns(:promo_bar))
  end

  test "should show promo_bar" do
    get :show, id: @promo_bar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promo_bar
    assert_response :success
  end

  test "should update promo_bar" do
    patch :update, id: @promo_bar, promo_bar: { headline: @promo_bar.headline, link: @promo_bar.link, title: @promo_bar.title, user_id: @promo_bar.user_id }
    assert_redirected_to promo_bar_path(assigns(:promo_bar))
  end

  test "should destroy promo_bar" do
    assert_difference('PromoBar.count', -1) do
      delete :destroy, id: @promo_bar
    end

    assert_redirected_to promo_bars_path
  end
end
