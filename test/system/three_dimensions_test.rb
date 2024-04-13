require "application_system_test_case"

class ThreeDimensionsTest < ApplicationSystemTestCase
  setup do
    @three_dimension = three_dimensions(:one)
  end

  test "visiting the index" do
    visit three_dimensions_url
    assert_selector "h1", text: "Three dimensions"
  end

  test "should create three dimension" do
    visit three_dimensions_url
    click_on "New three dimension"

    fill_in "Description", with: @three_dimension.description
    fill_in "Draft mark", with: @three_dimension.draft_mark
    fill_in "Fbx", with: @three_dimension.fbx
    fill_in "Glb", with: @three_dimension.glb
    fill_in "Litematic", with: @three_dimension.litematic
    fill_in "Nbt", with: @three_dimension.nbt
    fill_in "Obj", with: @three_dimension.obj
    fill_in "Schematic", with: @three_dimension.schematic
    fill_in "Status", with: @three_dimension.status
    fill_in "Stl", with: @three_dimension.stl
    fill_in "Thumbnail", with: @three_dimension.thumbnail
    fill_in "Title", with: @three_dimension.title
    fill_in "Usd", with: @three_dimension.usd
    fill_in "User", with: @three_dimension.user_id
    click_on "Create Three dimension"

    assert_text "Three dimension was successfully created"
    click_on "Back"
  end

  test "should update Three dimension" do
    visit three_dimension_url(@three_dimension)
    click_on "Edit this three dimension", match: :first

    fill_in "Description", with: @three_dimension.description
    fill_in "Draft mark", with: @three_dimension.draft_mark
    fill_in "Fbx", with: @three_dimension.fbx
    fill_in "Glb", with: @three_dimension.glb
    fill_in "Litematic", with: @three_dimension.litematic
    fill_in "Nbt", with: @three_dimension.nbt
    fill_in "Obj", with: @three_dimension.obj
    fill_in "Schematic", with: @three_dimension.schematic
    fill_in "Status", with: @three_dimension.status
    fill_in "Stl", with: @three_dimension.stl
    fill_in "Thumbnail", with: @three_dimension.thumbnail
    fill_in "Title", with: @three_dimension.title
    fill_in "Usd", with: @three_dimension.usd
    fill_in "User", with: @three_dimension.user_id
    click_on "Update Three dimension"

    assert_text "Three dimension was successfully updated"
    click_on "Back"
  end

  test "should destroy Three dimension" do
    visit three_dimension_url(@three_dimension)
    click_on "Destroy this three dimension", match: :first

    assert_text "Three dimension was successfully destroyed"
  end
end
