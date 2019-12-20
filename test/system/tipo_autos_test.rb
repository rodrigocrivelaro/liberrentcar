require "application_system_test_case"

class TipoAutosTest < ApplicationSystemTestCase
  setup do
    @tipo_auto = tipo_autos(:one)
  end

  test "visiting the index" do
    visit tipo_autos_url
    assert_selector "h1", text: "Tipo Autos"
  end

  test "creating a Tipo auto" do
    visit tipo_autos_url
    click_on "New Tipo Auto"

    fill_in "Nome", with: @tipo_auto.nome
    click_on "Create Tipo auto"

    assert_text "Tipo auto was successfully created"
    click_on "Back"
  end

  test "updating a Tipo auto" do
    visit tipo_autos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @tipo_auto.nome
    click_on "Update Tipo auto"

    assert_text "Tipo auto was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo auto" do
    visit tipo_autos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo auto was successfully destroyed"
  end
end
