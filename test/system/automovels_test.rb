require "application_system_test_case"

class AutomovelsTest < ApplicationSystemTestCase
  setup do
    @automovel = automovels(:one)
  end

  test "visiting the index" do
    visit automovels_url
    assert_selector "h1", text: "Automovels"
  end

  test "creating a Automovel" do
    visit automovels_url
    click_on "New Automovel"

    fill_in "Cor", with: @automovel.cor
    fill_in "Custo diario", with: @automovel.custo_diario
    fill_in "Modelo", with: @automovel.modelo
    fill_in "Placa", with: @automovel.placa
    fill_in "Tipo auto", with: @automovel.tipo_auto_id
    click_on "Create Automovel"

    assert_text "Automovel was successfully created"
    click_on "Back"
  end

  test "updating a Automovel" do
    visit automovels_url
    click_on "Edit", match: :first

    fill_in "Cor", with: @automovel.cor
    fill_in "Custo diario", with: @automovel.custo_diario
    fill_in "Modelo", with: @automovel.modelo
    fill_in "Placa", with: @automovel.placa
    fill_in "Tipo auto", with: @automovel.tipo_auto_id
    click_on "Update Automovel"

    assert_text "Automovel was successfully updated"
    click_on "Back"
  end

  test "destroying a Automovel" do
    visit automovels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Automovel was successfully destroyed"
  end
end
