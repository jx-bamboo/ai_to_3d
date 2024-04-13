require "test_helper"

class ThreeDimensionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @three_dimension = three_dimensions(:one)
  end

  test "should get index" do
    get three_dimensions_url
    assert_response :success
  end

  test "should get new" do
    get new_three_dimension_url
    assert_response :success
  end

  test "should create three_dimension" do
    assert_difference("ThreeDimension.count") do
      post three_dimensions_url, params: { three_dimension: { description: @three_dimension.description, draft_mark: @three_dimension.draft_mark, fbx: @three_dimension.fbx, glb: @three_dimension.glb, litematic: @three_dimension.litematic, nbt: @three_dimension.nbt, obj: @three_dimension.obj, schematic: @three_dimension.schematic, status: @three_dimension.status, stl: @three_dimension.stl, thumbnail: @three_dimension.thumbnail, title: @three_dimension.title, usd: @three_dimension.usd, user_id: @three_dimension.user_id } }
    end

    assert_redirected_to three_dimension_url(ThreeDimension.last)
  end

  test "should show three_dimension" do
    get three_dimension_url(@three_dimension)
    assert_response :success
  end

  test "should get edit" do
    get edit_three_dimension_url(@three_dimension)
    assert_response :success
  end

  test "should update three_dimension" do
    patch three_dimension_url(@three_dimension), params: { three_dimension: { description: @three_dimension.description, draft_mark: @three_dimension.draft_mark, fbx: @three_dimension.fbx, glb: @three_dimension.glb, litematic: @three_dimension.litematic, nbt: @three_dimension.nbt, obj: @three_dimension.obj, schematic: @three_dimension.schematic, status: @three_dimension.status, stl: @three_dimension.stl, thumbnail: @three_dimension.thumbnail, title: @three_dimension.title, usd: @three_dimension.usd, user_id: @three_dimension.user_id } }
    assert_redirected_to three_dimension_url(@three_dimension)
  end

  test "should destroy three_dimension" do
    assert_difference("ThreeDimension.count", -1) do
      delete three_dimension_url(@three_dimension)
    end

    assert_redirected_to three_dimensions_url
  end
end
