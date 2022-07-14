require "application_system_test_case"

class KommentaresTest < ApplicationSystemTestCase
  setup do
    @kommentare = kommentares(:one)
  end

  test "visiting the index" do
    visit kommentares_url
    assert_selector "h1", text: "Kommentares"
  end

  test "should create kommentare" do
    visit kommentares_url
    click_on "New kommentare"

    fill_in "Posts", with: @kommentare.posts_id
    fill_in "Text", with: @kommentare.text
    fill_in "Zeit", with: @kommentare.zeit
    click_on "Create Kommentare"

    assert_text "Kommentare was successfully created"
    click_on "Back"
  end

  test "should update Kommentare" do
    visit kommentare_url(@kommentare)
    click_on "Edit this kommentare", match: :first

    fill_in "Posts", with: @kommentare.posts_id
    fill_in "Text", with: @kommentare.text
    fill_in "Zeit", with: @kommentare.zeit
    click_on "Update Kommentare"

    assert_text "Kommentare was successfully updated"
    click_on "Back"
  end

  test "should destroy Kommentare" do
    visit kommentare_url(@kommentare)
    click_on "Destroy this kommentare", match: :first

    assert_text "Kommentare was successfully destroyed"
  end
end
