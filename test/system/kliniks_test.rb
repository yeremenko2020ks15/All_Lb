require "application_system_test_case"

class KliniksTest < ApplicationSystemTestCase
  setup do
    @klinik = kliniks(:one)
  end

  test "visiting the index" do
    visit kliniks_url
    assert_selector "h1", text: "Kliniks"
  end

  test "creating a Klinik" do
    visit kliniks_url
    click_on "New Klinik"

    fill_in "Ratingmorality", with: @klinik.RatingMorality
    fill_in "City", with: @klinik.city
    fill_in "Name", with: @klinik.name
    fill_in "Type", with: @klinik.type
    click_on "Create Klinik"

    assert_text "Klinik was successfully created"
    click_on "Back"
  end

  test "updating a Klinik" do
    visit kliniks_url
    click_on "Edit", match: :first

    fill_in "Ratingmorality", with: @klinik.RatingMorality
    fill_in "City", with: @klinik.city
    fill_in "Name", with: @klinik.name
    fill_in "Type", with: @klinik.type
    click_on "Update Klinik"

    assert_text "Klinik was successfully updated"
    click_on "Back"
  end

  test "destroying a Klinik" do
    visit kliniks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Klinik was successfully destroyed"
  end
end
