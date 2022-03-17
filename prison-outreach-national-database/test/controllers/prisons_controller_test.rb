require "test_helper"

class PrisonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prison = prisons(:one)
  end

  test "should get index" do
    get prisons_url
    assert_response :success
  end

  test "should get new" do
    get new_prison_url
    assert_response :success
  end

  test "should create prison" do
    assert_difference("Prison.count") do
      post prisons_url, params: { prison: { address: @prison.address, address2: @prison.address2, city: @prison.city, comment: @prison.comment, hkf_id: @prison.hkf_id, name: @prison.name, order_restrictions: @prison.order_restrictions, shipping_restrictions: @prison.shipping_restrictions, state: @prison.state, zip: @prison.zip } }
    end

    assert_redirected_to prison_url(Prison.last)
  end

  test "should show prison" do
    get prison_url(@prison)
    assert_response :success
  end

  test "should get edit" do
    get edit_prison_url(@prison)
    assert_response :success
  end

  test "should update prison" do
    patch prison_url(@prison), params: { prison: { address: @prison.address, address2: @prison.address2, city: @prison.city, comment: @prison.comment, hkf_id: @prison.hkf_id, name: @prison.name, order_restrictions: @prison.order_restrictions, shipping_restrictions: @prison.shipping_restrictions, state: @prison.state, zip: @prison.zip } }
    assert_redirected_to prison_url(@prison)
  end

  test "should destroy prison" do
    assert_difference("Prison.count", -1) do
      delete prison_url(@prison)
    end

    assert_redirected_to prisons_url
  end
end
