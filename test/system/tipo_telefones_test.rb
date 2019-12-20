require "application_system_test_case"

class TipoTelefonesTest < ApplicationSystemTestCase
  setup do
    @tipo_telefone = tipo_telefones(:one)
  end

  test "visiting the index" do
    visit tipo_telefones_url
    assert_selector "h1", text: "Tipo Telefones"
  end

  test "creating a Tipo telefone" do
    visit tipo_telefones_url
    click_on "New Tipo Telefone"

    fill_in "Nome", with: @tipo_telefone.nome
    click_on "Create Tipo telefone"

    assert_text "Tipo telefone was successfully created"
    click_on "Back"
  end

  test "updating a Tipo telefone" do
    visit tipo_telefones_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @tipo_telefone.nome
    click_on "Update Tipo telefone"

    assert_text "Tipo telefone was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo telefone" do
    visit tipo_telefones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo telefone was successfully destroyed"
  end
end
