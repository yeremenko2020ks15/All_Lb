require "application_system_test_case"

class SpecializationsTest < ApplicationSystemTestCase
  setup do
    @specialization = specializations(:one)
  end

  test "visiting the index" do
    visit specializations_url
    assert_selector "h1", text: "Specializations"
  end

  test "creating a Specialization" do
    visit specializations_url
    click_on "New Specialization"

    fill_in "Name", with: @specialization.name
    click_on "Create Specialization"

    assert_text "Specialization was successfully created"
    click_on "Back"
  end

  test "updating a Specialization" do
    visit specializations_url
    click_on "Edit", match: :first

    fill_in "Name", with: @specialization.name
    click_on "Update Specialization"

    assert_text "Specialization was successfully updated"
    click_on "Back"
  end

  test "destroying a Specialization" do
    visit specializations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Specialization was successfully destroyed"
  end
end
