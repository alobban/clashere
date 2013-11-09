require 'test_helper'

class ClassifiedAdsControllerTest < ActionController::TestCase
  setup do
    @classified_ad = classified_ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classified_ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classified_ad" do
    assert_difference('ClassifiedAd.count') do
      post :create, classified_ad: { bath: @classified_ad.bath, bed: @classified_ad.bed, description: @classified_ad.description, end_date: @classified_ad.end_date, location: @classified_ad.location, rent: @classified_ad.rent, title: @classified_ad.title, user_id: @classified_ad.user_id }
    end

    assert_redirected_to classified_ad_path(assigns(:classified_ad))
  end

  test "should show classified_ad" do
    get :show, id: @classified_ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classified_ad
    assert_response :success
  end

  test "should update classified_ad" do
    patch :update, id: @classified_ad, classified_ad: { bath: @classified_ad.bath, bed: @classified_ad.bed, description: @classified_ad.description, end_date: @classified_ad.end_date, location: @classified_ad.location, rent: @classified_ad.rent, title: @classified_ad.title, user_id: @classified_ad.user_id }
    assert_redirected_to classified_ad_path(assigns(:classified_ad))
  end

  test "should destroy classified_ad" do
    assert_difference('ClassifiedAd.count', -1) do
      delete :destroy, id: @classified_ad
    end

    assert_redirected_to classified_ads_path
  end
end
