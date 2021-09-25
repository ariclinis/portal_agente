require "application_system_test_case"

class ArmadorsTest < ApplicationSystemTestCase
  setup do
    @armador = armadors(:one)
  end

  test "visiting the index" do
    visit armadors_url
    assert_selector "h1", text: "Armadors"
  end

  test "creating a Armador" do
    visit armadors_url
    click_on "New Armador"

    fill_in "Agente", with: @armador.agente
    fill_in "Morada", with: @armador.morada
    fill_in "Nome", with: @armador.nome
    fill_in "Pais", with: @armador.pais
    fill_in "Status", with: @armador.status
    fill_in "Tel", with: @armador.tel
    click_on "Create Armador"

    assert_text "Armador was successfully created"
    click_on "Back"
  end

  test "updating a Armador" do
    visit armadors_url
    click_on "Edit", match: :first

    fill_in "Agente", with: @armador.agente
    fill_in "Morada", with: @armador.morada
    fill_in "Nome", with: @armador.nome
    fill_in "Pais", with: @armador.pais
    fill_in "Status", with: @armador.status
    fill_in "Tel", with: @armador.tel
    click_on "Update Armador"

    assert_text "Armador was successfully updated"
    click_on "Back"
  end

  test "destroying a Armador" do
    visit armadors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Armador was successfully destroyed"
  end
end
