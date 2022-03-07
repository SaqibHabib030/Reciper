require "test_helper"

class RecipiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipy = recipies(:one)
  end

  test "should get index" do
    get recipies_url
    assert_response :success
  end

  test "should get new" do
    get new_recipy_url
    assert_response :success
  end

  test "should create recipy" do
    assert_difference('Recipy.count') do
      post recipies_url, params: { recipy: { name: @recipy.name, procedure: @recipy.procedure } }
    end

    assert_redirected_to recipy_url(Recipy.last)
  end

  test "should show recipy" do
    get recipy_url(@recipy)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipy_url(@recipy)
    assert_response :success
  end

  test "should update recipy" do
    patch recipy_url(@recipy), params: { recipy: { name: @recipy.name, procedure: @recipy.procedure } }
    assert_redirected_to recipy_url(@recipy)
  end

  test "should destroy recipy" do
    assert_difference('Recipy.count', -1) do
      delete recipy_url(@recipy)
    end

    assert_redirected_to recipies_url
  end
end
