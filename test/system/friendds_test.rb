require "application_system_test_case"

class FrienddsTest < ApplicationSystemTestCase
  setup do
    @friendd = friendds(:one)
  end

  test "visiting the index" do
    visit friendds_url
    assert_selector "h1", text: "Friendds"
  end

  test "should create friendd" do
    visit friendds_url
    click_on "New friendd"

    fill_in "Email", with: @friendd.email
    fill_in "First name", with: @friendd.first_name
    fill_in "Last name", with: @friendd.last_name
    fill_in "Phone", with: @friendd.phone
    fill_in "Twitter", with: @friendd.twitter
    click_on "Create Friendd"

    assert_text "Friendd was successfully created"
    click_on "Back"
  end

  test "should update Friendd" do
    visit friendd_url(@friendd)
    click_on "Edit this friendd", match: :first

    fill_in "Email", with: @friendd.email
    fill_in "First name", with: @friendd.first_name
    fill_in "Last name", with: @friendd.last_name
    fill_in "Phone", with: @friendd.phone
    fill_in "Twitter", with: @friendd.twitter
    click_on "Update Friendd"

    assert_text "Friendd was successfully updated"
    click_on "Back"
  end

  test "should destroy Friendd" do
    visit friendd_url(@friendd)
    click_on "Destroy this friendd", match: :first

    assert_text "Friendd was successfully destroyed"
  end
end
