require "application_system_test_case"

class CommentarsTest < ApplicationSystemTestCase
  setup do
    @commentar = commentars(:one)
  end

  test "visiting the index" do
    visit commentars_url
    assert_selector "h1", text: "Commentars"
  end

  test "should create commentar" do
    visit commentars_url
    click_on "New commentar"

    fill_in "Artikel id", with: @commentar.artikel_id_id
    fill_in "Text", with: @commentar.text
    fill_in "Zeit", with: @commentar.zeit
    click_on "Create Commentar"

    assert_text "Commentar was successfully created"
    click_on "Back"
  end

  test "should update Commentar" do
    visit commentar_url(@commentar)
    click_on "Edit this commentar", match: :first

    fill_in "Artikel id", with: @commentar.artikel_id_id
    fill_in "Text", with: @commentar.text
    fill_in "Zeit", with: @commentar.zeit
    click_on "Update Commentar"

    assert_text "Commentar was successfully updated"
    click_on "Back"
  end

  test "should destroy Commentar" do
    visit commentar_url(@commentar)
    click_on "Destroy this commentar", match: :first

    assert_text "Commentar was successfully destroyed"
  end
end
