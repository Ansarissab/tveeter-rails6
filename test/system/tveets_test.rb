require "application_system_test_case"

class TveetsTest < ApplicationSystemTestCase
  setup do
    @tveet = tveets(:one)
  end

  test "visiting the index" do
    visit tveets_url
    assert_selector "h1", text: "Tveets"
  end

  test "creating a Tveet" do
    visit tveets_url
    click_on "New Tveet"

    fill_in "Body", with: @tveet.body
    fill_in "Likes count", with: @tveet.likes_count
    fill_in "Retweets count", with: @tveet.retweets_count
    click_on "Create Tveet"

    assert_text "Tveet was successfully created"
    click_on "Back"
  end

  test "updating a Tveet" do
    visit tveets_url
    click_on "Edit", match: :first

    fill_in "Body", with: @tveet.body
    fill_in "Likes count", with: @tveet.likes_count
    fill_in "Retweets count", with: @tveet.retweets_count
    click_on "Update Tveet"

    assert_text "Tveet was successfully updated"
    click_on "Back"
  end

  test "destroying a Tveet" do
    visit tveets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tveet was successfully destroyed"
  end
end
