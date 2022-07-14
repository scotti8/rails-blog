require "test_helper"

class KommentaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kommentare = kommentares(:one)
  end

  test "should get index" do
    get kommentares_url
    assert_response :success
  end

  test "should get new" do
    get new_kommentare_url
    assert_response :success
  end

  test "should create kommentare" do
    assert_difference("Kommentare.count") do
      post kommentares_url, params: { kommentare: { posts_id: @kommentare.posts_id, text: @kommentare.text, zeit: @kommentare.zeit } }
    end

    assert_redirected_to kommentare_url(Kommentare.last)
  end

  test "should show kommentare" do
    get kommentare_url(@kommentare)
    assert_response :success
  end

  test "should get edit" do
    get edit_kommentare_url(@kommentare)
    assert_response :success
  end

  test "should update kommentare" do
    patch kommentare_url(@kommentare), params: { kommentare: { posts_id: @kommentare.posts_id, text: @kommentare.text, zeit: @kommentare.zeit } }
    assert_redirected_to kommentare_url(@kommentare)
  end

  test "should destroy kommentare" do
    assert_difference("Kommentare.count", -1) do
      delete kommentare_url(@kommentare)
    end

    assert_redirected_to kommentares_url
  end
end
