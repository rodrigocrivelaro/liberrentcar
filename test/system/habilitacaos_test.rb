require "application_system_test_case"

class HabilitacaosTest < ApplicationSystemTestCase
  setup do
    @habilitacao = habilitacaos(:one)
  end

  test "visiting the index" do
    visit habilitacaos_url
    assert_selector "h1", text: "Habilitacaos"
  end

  test "creating a Habilitacao" do
    visit habilitacaos_url
    click_on "New Habilitacao"

    fill_in "Modalidade", with: @habilitacao.modalidade
    fill_in "Numero", with: @habilitacao.numero
    fill_in "Pessoa", with: @habilitacao.pessoa_id
    fill_in "Validade", with: @habilitacao.validade
    click_on "Create Habilitacao"

    assert_text "Habilitacao was successfully created"
    click_on "Back"
  end

  test "updating a Habilitacao" do
    visit habilitacaos_url
    click_on "Edit", match: :first

    fill_in "Modalidade", with: @habilitacao.modalidade
    fill_in "Numero", with: @habilitacao.numero
    fill_in "Pessoa", with: @habilitacao.pessoa_id
    fill_in "Validade", with: @habilitacao.validade
    click_on "Update Habilitacao"

    assert_text "Habilitacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Habilitacao" do
    visit habilitacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Habilitacao was successfully destroyed"
  end
end
