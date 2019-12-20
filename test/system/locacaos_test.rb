require "application_system_test_case"

class LocacaosTest < ApplicationSystemTestCase
  setup do
    @locacao = locacaos(:one)
  end

  test "visiting the index" do
    visit locacaos_url
    assert_selector "h1", text: "Locacaos"
  end

  test "creating a Locacao" do
    visit locacaos_url
    click_on "New Locacao"

    fill_in "Automovel", with: @locacao.automovel_id
    fill_in "Dt entrega", with: @locacao.dt_entrega
    fill_in "Dt inicio", with: @locacao.dt_inicio
    fill_in "Dt retirada", with: @locacao.dt_retirada
    fill_in "Dt termino", with: @locacao.dt_termino
    fill_in "Pessoa", with: @locacao.pessoa_id
    fill_in "Valor", with: @locacao.valor
    click_on "Create Locacao"

    assert_text "Locacao was successfully created"
    click_on "Back"
  end

  test "updating a Locacao" do
    visit locacaos_url
    click_on "Edit", match: :first

    fill_in "Automovel", with: @locacao.automovel_id
    fill_in "Dt entrega", with: @locacao.dt_entrega
    fill_in "Dt inicio", with: @locacao.dt_inicio
    fill_in "Dt retirada", with: @locacao.dt_retirada
    fill_in "Dt termino", with: @locacao.dt_termino
    fill_in "Pessoa", with: @locacao.pessoa_id
    fill_in "Valor", with: @locacao.valor
    click_on "Update Locacao"

    assert_text "Locacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Locacao" do
    visit locacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Locacao was successfully destroyed"
  end
end
