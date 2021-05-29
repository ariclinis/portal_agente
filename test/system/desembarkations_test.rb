require "application_system_test_case"

class DesembarkationsTest < ApplicationSystemTestCase
  setup do
    @desembarkation = desembarkations(:one)
  end

  test "visiting the index" do
    visit desembarkations_url
    assert_selector "h1", text: "Desembarkations"
  end

  test "creating a Desembarkation" do
    visit desembarkations_url
    click_on "New Desembarkation"

    fill_in "Armador", with: @desembarkation.armador_id
    fill_in "Data emissao", with: @desembarkation.data_emissao
    fill_in "Data entrada", with: @desembarkation.data_entrada
    fill_in "Data saida", with: @desembarkation.data_saida
    fill_in "Data validade", with: @desembarkation.data_validade
    fill_in "Email", with: @desembarkation.email
    fill_in "Embarkation", with: @desembarkation.embarkation_id
    fill_in "Estadia final", with: @desembarkation.estadia_final
    fill_in "Estadia prev", with: @desembarkation.estadia_prev
    fill_in "Hora entrada", with: @desembarkation.hora_entrada
    fill_in "Hora saida", with: @desembarkation.hora_saida
    fill_in "N doc", with: @desembarkation.n_doc
    fill_in "N movimento", with: @desembarkation.n_movimento
    fill_in "Nacionalida", with: @desembarkation.nacionalida
    fill_in "Nome comandante", with: @desembarkation.nome_comandante
    fill_in "Porto destino", with: @desembarkation.porto_destino
    fill_in "Porto origem", with: @desembarkation.porto_origem
    fill_in "Status", with: @desembarkation.status
    fill_in "Tipo doc", with: @desembarkation.tipo_doc
    fill_in "User", with: @desembarkation.user
    click_on "Create Desembarkation"

    assert_text "Desembarkation was successfully created"
    click_on "Back"
  end

  test "updating a Desembarkation" do
    visit desembarkations_url
    click_on "Edit", match: :first

    fill_in "Armador", with: @desembarkation.armador_id
    fill_in "Data emissao", with: @desembarkation.data_emissao
    fill_in "Data entrada", with: @desembarkation.data_entrada
    fill_in "Data saida", with: @desembarkation.data_saida
    fill_in "Data validade", with: @desembarkation.data_validade
    fill_in "Email", with: @desembarkation.email
    fill_in "Embarkation", with: @desembarkation.embarkation_id
    fill_in "Estadia final", with: @desembarkation.estadia_final
    fill_in "Estadia prev", with: @desembarkation.estadia_prev
    fill_in "Hora entrada", with: @desembarkation.hora_entrada
    fill_in "Hora saida", with: @desembarkation.hora_saida
    fill_in "N doc", with: @desembarkation.n_doc
    fill_in "N movimento", with: @desembarkation.n_movimento
    fill_in "Nacionalida", with: @desembarkation.nacionalida
    fill_in "Nome comandante", with: @desembarkation.nome_comandante
    fill_in "Porto destino", with: @desembarkation.porto_destino
    fill_in "Porto origem", with: @desembarkation.porto_origem
    fill_in "Status", with: @desembarkation.status
    fill_in "Tipo doc", with: @desembarkation.tipo_doc
    fill_in "User", with: @desembarkation.user
    click_on "Update Desembarkation"

    assert_text "Desembarkation was successfully updated"
    click_on "Back"
  end

  test "destroying a Desembarkation" do
    visit desembarkations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Desembarkation was successfully destroyed"
  end
end
