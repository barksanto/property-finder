require "application_system_test_case"

class PropsTest < ApplicationSystemTestCase
  setup do
    @prop = props(:one)
  end

  test "visiting the index" do
    visit props_url
    assert_selector "h1", text: "Props"
  end

  test "creating a Prop" do
    visit props_url
    click_on "New Prop"

    fill_in "Address", with: @prop.address
    fill_in "Bathrooms", with: @prop.bathrooms
    fill_in "Name", with: @prop.name
    fill_in "Price", with: @prop.price
    fill_in "Rooms", with: @prop.rooms
    click_on "Create Prop"

    assert_text "Prop was successfully created"
    click_on "Back"
  end

  test "updating a Prop" do
    visit props_url
    click_on "Edit", match: :first

    fill_in "Address", with: @prop.address
    fill_in "Bathrooms", with: @prop.bathrooms
    fill_in "Name", with: @prop.name
    fill_in "Price", with: @prop.price
    fill_in "Rooms", with: @prop.rooms
    click_on "Update Prop"

    assert_text "Prop was successfully updated"
    click_on "Back"
  end

  test "destroying a Prop" do
    visit props_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prop was successfully destroyed"
  end
end
