require "application_system_test_case"

class PostelementsTest < ApplicationSystemTestCase
  setup do
    @postelement = postelements(:one)
  end

  test "visiting the index" do
    visit postelements_url
    assert_selector "h1", text: "Postelements"
  end

  test "creating a Postelement" do
    visit postelements_url
    click_on "New Postelement"

    fill_in "Content", with: @postelement.content
    fill_in "Element type", with: @postelement.element_type
    fill_in "Position", with: @postelement.position
    fill_in "Post", with: @postelement.post_id
    click_on "Create Postelement"

    assert_text "Postelement was successfully created"
    click_on "Back"
  end

  test "updating a Postelement" do
    visit postelements_url
    click_on "Edit", match: :first

    fill_in "Content", with: @postelement.content
    fill_in "Element type", with: @postelement.element_type
    fill_in "Position", with: @postelement.position
    fill_in "Post", with: @postelement.post_id
    click_on "Update Postelement"

    assert_text "Postelement was successfully updated"
    click_on "Back"
  end

  test "destroying a Postelement" do
    visit postelements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postelement was successfully destroyed"
  end
end
