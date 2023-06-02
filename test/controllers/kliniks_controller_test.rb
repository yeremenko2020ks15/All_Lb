require "test_helper"

class KliniksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @klinik = kliniks(:one)
  end

  test "should get index" do
    get kliniks_url
    assert_response :success
  end

  test "should get new" do
    get new_klinik_url
    assert_response :success
  end

  test "should create klinik" do
    assert_difference('Klinik.count') do
      post kliniks_url, params: { klinik: { RatingMorality: @klinik.RatingMorality, city: @klinik.city, name: @klinik.name, type: @klinik.type } }
    end

    assert_redirected_to klinik_url(Klinik.last)
  end

  test "should show klinik" do
    get klinik_url(@klinik)
    assert_response :success
  end

  test "should get edit" do
    get edit_klinik_url(@klinik)
    assert_response :success
  end

  test "should update klinik" do
    patch klinik_url(@klinik), params: { klinik: { RatingMorality: @klinik.RatingMorality, city: @klinik.city, name: @klinik.name, type: @klinik.type } }
    assert_redirected_to klinik_url(@klinik)
  end

  test "should destroy klinik" do
    assert_difference('Klinik.count', -1) do
      delete klinik_url(@klinik)
    end

    assert_redirected_to kliniks_url
  end
end
