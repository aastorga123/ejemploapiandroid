require 'test_helper'

class AndroidversionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @androidversion = androidversions(:one)
  end

  test "should get index" do
    get androidversions_url
    assert_response :success
  end

  test "should get new" do
    get new_androidversion_url
    assert_response :success
  end

  test "should create androidversion" do
    assert_difference('Androidversion.count') do
      post androidversions_url, params: { androidversion: { api: @androidversion.api, name: @androidversion.name, ver: @androidversion.ver } }
    end

    assert_redirected_to androidversion_url(Androidversion.last)
  end

  test "should show androidversion" do
    get androidversion_url(@androidversion)
    assert_response :success
  end

  test "should get edit" do
    get edit_androidversion_url(@androidversion)
    assert_response :success
  end

  test "should update androidversion" do
    patch androidversion_url(@androidversion), params: { androidversion: { api: @androidversion.api, name: @androidversion.name, ver: @androidversion.ver } }
    assert_redirected_to androidversion_url(@androidversion)
  end

  test "should destroy androidversion" do
    assert_difference('Androidversion.count', -1) do
      delete androidversion_url(@androidversion)
    end

    assert_redirected_to androidversions_url
  end
end
