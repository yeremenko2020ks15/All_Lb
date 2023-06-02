require "test_helper"

class PatientCartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_cart = patient_carts(:one)
  end

  test "should get index" do
    get patient_carts_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_cart_url
    assert_response :success
  end

  test "should create patient_cart" do
    assert_difference('PatientCart.count') do
      post patient_carts_url, params: { patient_cart: { doctor: @patient_cart.doctor, klinik: @patient_cart.klinik } }
    end

    assert_redirected_to patient_cart_url(PatientCart.last)
  end

  test "should show patient_cart" do
    get patient_cart_url(@patient_cart)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_cart_url(@patient_cart)
    assert_response :success
  end

  test "should update patient_cart" do
    patch patient_cart_url(@patient_cart), params: { patient_cart: { doctor: @patient_cart.doctor, klinik: @patient_cart.klinik } }
    assert_redirected_to patient_cart_url(@patient_cart)
  end

  test "should destroy patient_cart" do
    assert_difference('PatientCart.count', -1) do
      delete patient_cart_url(@patient_cart)
    end

    assert_redirected_to patient_carts_url
  end
end
