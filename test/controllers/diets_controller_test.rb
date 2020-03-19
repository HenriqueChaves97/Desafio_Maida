require 'test_helper'

class DietsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diet = diets(:one)
  end

  test "should get index" do
    get diets_url
    assert_response :success
  end

  test "should get new" do
    get new_diet_url
    assert_response :success
  end

  test "should create diet" do
    assert_difference('Diet.count') do
      post diets_url, params: { diet: { altura: @diet.altura, data_final: @diet.data_final, data_inicial: @diet.data_inicial, peso_atual: @diet.peso_atual, peso_ideal: @diet.peso_ideal } }
    end

    assert_redirected_to diet_url(Diet.last)
  end

  test "should show diet" do
    get diet_url(@diet)
    assert_response :success
  end

  test "should get edit" do
    get edit_diet_url(@diet)
    assert_response :success
  end

  test "should update diet" do
    patch diet_url(@diet), params: { diet: { altura: @diet.altura, data_final: @diet.data_final, data_inicial: @diet.data_inicial, peso_atual: @diet.peso_atual, peso_ideal: @diet.peso_ideal } }
    assert_redirected_to diet_url(@diet)
  end

  test "should destroy diet" do
    assert_difference('Diet.count', -1) do
      delete diet_url(@diet)
    end

    assert_redirected_to diets_url
  end
end
