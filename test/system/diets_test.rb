require "application_system_test_case"

class DietsTest < ApplicationSystemTestCase
  setup do
    @diet = diets(:one)
  end

  test "visiting the index" do
    visit diets_url
    assert_selector "h1", text: "Diets"
  end

  test "creating a Diet" do
    visit diets_url
    click_on "New Diet"

    fill_in "Altura", with: @diet.altura
    fill_in "Data final", with: @diet.data_final
    fill_in "Data inicial", with: @diet.data_inicial
    fill_in "Peso atual", with: @diet.peso_atual
    fill_in "Peso ideal", with: @diet.peso_ideal
    click_on "Create Diet"

    assert_text "Diet was successfully created"
    click_on "Back"
  end

  test "updating a Diet" do
    visit diets_url
    click_on "Edit", match: :first

    fill_in "Altura", with: @diet.altura
    fill_in "Data final", with: @diet.data_final
    fill_in "Data inicial", with: @diet.data_inicial
    fill_in "Peso atual", with: @diet.peso_atual
    fill_in "Peso ideal", with: @diet.peso_ideal
    click_on "Update Diet"

    assert_text "Diet was successfully updated"
    click_on "Back"
  end

  test "destroying a Diet" do
    visit diets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diet was successfully destroyed"
  end
end
