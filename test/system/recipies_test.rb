require "application_system_test_case"

class RecipiesTest < ApplicationSystemTestCase
  setup do
    @recipy = recipies(:one)
  end

  test "visiting the index" do
    visit recipies_url
    assert_selector "h1", text: "Recipies"
  end

  test "creating a Recipy" do
    visit recipies_url
    click_on "New Recipy"

    fill_in "Name", with: @recipy.name
    fill_in "Procedure", with: @recipy.procedure
    click_on "Create Recipy"

    assert_text "Recipy was successfully created"
    click_on "Back"
  end

  test "updating a Recipy" do
    visit recipies_url
    click_on "Edit", match: :first

    fill_in "Name", with: @recipy.name
    fill_in "Procedure", with: @recipy.procedure
    click_on "Update Recipy"

    assert_text "Recipy was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipy" do
    visit recipies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipy was successfully destroyed"
  end
end
