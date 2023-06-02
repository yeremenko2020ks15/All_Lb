require "application_system_test_case"

class PatientCartsTest < ApplicationSystemTestCase
  setup do
    @patient_cart = patient_carts(:one)
  end

  test "visiting the index" do
    visit patient_carts_url
    assert_selector "h1", text: "Patient Carts"
  end

  test "creating a Patient cart" do
    visit patient_carts_url
    click_on "New Patient Cart"

    fill_in "Doctor", with: @patient_cart.doctor
    fill_in "Klinik", with: @patient_cart.klinik
    click_on "Create Patient cart"

    assert_text "Patient cart was successfully created"
    click_on "Back"
  end

  test "updating a Patient cart" do
    visit patient_carts_url
    click_on "Edit", match: :first

    fill_in "Doctor", with: @patient_cart.doctor
    fill_in "Klinik", with: @patient_cart.klinik
    click_on "Update Patient cart"

    assert_text "Patient cart was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient cart" do
    visit patient_carts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient cart was successfully destroyed"
  end
end
