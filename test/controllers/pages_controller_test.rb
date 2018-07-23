require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get blog" do
    get pages_blog_url
    assert_response :success
  end

  test "should get careers" do
    get pages_careers_url
    assert_response :success
  end

  test "should get client_stores" do
    get pages_client_stores_url
    assert_response :success
  end

  test "should get faq" do
    get pages_faq_url
    assert_response :success
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get how_it_works" do
    get pages_how_it_works_url
    assert_response :success
  end

  test "should get invoice_factoring" do
    get pages_invoice_factoring_url
    assert_response :success
  end

  test "should get line_of_credit" do
    get pages_line_of_credit_url
    assert_response :success
  end

  test "should get partner" do
    get pages_partner_url
    assert_response :success
  end

  test "should get press" do
    get pages_press_url
    assert_response :success
  end

  test "should get pricing" do
    get pages_pricing_url
    assert_response :success
  end

  test "should get privacy" do
    get pages_privacy_url
    assert_response :success
  end

  test "should get support" do
    get pages_support_url
    assert_response :success
  end

  test "should get terms" do
    get pages_terms_url
    assert_response :success
  end

end
