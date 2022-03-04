require "application_system_test_case"

class PrisonsTest < ApplicationSystemTestCase
  setup do
    @prison = prisons(:one)
  end

  test "visiting the index" do
    visit prisons_url
    assert_selector "h1", text: "Prisons"
  end

  test "should create prison" do
    visit prisons_url
    click_on "New prison"

    fill_in "Address", with: @prison.address
    fill_in "Address2", with: @prison.address2
    fill_in "City", with: @prison.city
    fill_in "Comment", with: @prison.comment
    fill_in "Hkf", with: @prison.hkf_id
    fill_in "Name", with: @prison.name
    fill_in "Order restrictions", with: @prison.order_restrictions
    fill_in "Shipping restrictions", with: @prison.shipping_restrictions
    fill_in "State", with: @prison.state
    fill_in "Zip", with: @prison.zip
    click_on "Create Prison"

    assert_text "Prison was successfully created"
    click_on "Back"
  end

  test "should update Prison" do
    visit prison_url(@prison)
    click_on "Edit this prison", match: :first

    fill_in "Address", with: @prison.address
    fill_in "Address2", with: @prison.address2
    fill_in "City", with: @prison.city
    fill_in "Comment", with: @prison.comment
    fill_in "Hkf", with: @prison.hkf_id
    fill_in "Name", with: @prison.name
    fill_in "Order restrictions", with: @prison.order_restrictions
    fill_in "Shipping restrictions", with: @prison.shipping_restrictions
    fill_in "State", with: @prison.state
    fill_in "Zip", with: @prison.zip
    click_on "Update Prison"

    assert_text "Prison was successfully updated"
    click_on "Back"
  end

  test "should destroy Prison" do
    visit prison_url(@prison)
    click_on "Destroy this prison", match: :first

    assert_text "Prison was successfully destroyed"
  end
end
