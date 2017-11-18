require 'test_helper'

class PostCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_card = post_cards(:one)
  end

  test "should get index" do
    get post_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_post_card_url
    assert_response :success
  end

  test "should create post_card" do
    assert_difference('Carte.count') do
      post post_cards_url, params: { post_card: { body: @post_card.body, description: @post_card.description, image_url: @post_card.image_url, keywords: @post_card.keywords, sent_at: @post_card.sent_at, slug: @post_card.slug, title: @post_card.title } }
    end

    assert_redirected_to post_card_url(Carte.last)
  end

  test "should show post_card" do
    get post_card_url(@post_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_card_url(@post_card)
    assert_response :success
  end

  test "should update post_card" do
    patch post_card_url(@post_card), params: { post_card: { body: @post_card.body, description: @post_card.description, image_url: @post_card.image_url, keywords: @post_card.keywords, sent_at: @post_card.sent_at, slug: @post_card.slug, title: @post_card.title } }
    assert_redirected_to post_card_url(@post_card)
  end

  test "should destroy post_card" do
    assert_difference('Carte.count', -1) do
      delete post_card_url(@post_card)
    end

    assert_redirected_to post_cards_url
  end
end
