require "application_system_test_case"

class EmbarkationsTest < ApplicationSystemTestCase
  setup do
    @embarkation = embarkations(:one)
  end

  test "visiting the index" do
    visit embarkations_url
    assert_selector "h1", text: "Embarkations"
  end

  test "creating a Embarkation" do
    visit embarkations_url
    click_on "New Embarkation"

    fill_in "Armador", with: @embarkation.armador_id
    fill_in "Bandeira actual", with: @embarkation.bandeira_actual
    fill_in "Bandeira origem", with: @embarkation.bandeira_origem
    fill_in "Boca", with: @embarkation.boca
    fill_in "Capitao", with: @embarkation.capitao_id
    fill_in "Comprimento", with: @embarkation.comprimento
    fill_in "Data contrucao", with: @embarkation.data_contrucao
    fill_in "Delegation", with: @embarkation.delegation_id
    fill_in "Estaleiro", with: @embarkation.estaleiro
    fill_in "Indicativo chamada", with: @embarkation.indicativo_chamada
    fill_in "Local atracagem", with: @embarkation.local_atracagem
    fill_in "Lotacao", with: @embarkation.lotacao
    fill_in "Matricula", with: @embarkation.matricula
    fill_in "Nome", with: @embarkation.nome
    fill_in "Nr imo", with: @embarkation.nr_imo
    fill_in "Nr max tripulante", with: @embarkation.nr_max_tripulante
    fill_in "Nr min tripulante", with: @embarkation.nr_min_tripulante
    fill_in "Pontal", with: @embarkation.pontal
    fill_in "Porto registro", with: @embarkation.porto_registro
    fill_in "Proprietario", with: @embarkation.proprietario_id
    fill_in "Stado da embarcacao", with: @embarkation.stado_da_embarcacao
    fill_in "Status", with: @embarkation.status
    fill_in "Tipo classificacao", with: @embarkation.tipo_classificacao_id
    fill_in "Tipo de casco", with: @embarkation.tipo_de_casco_id
    fill_in "Tipo embarcacao", with: @embarkation.tipo_embarcacao_id
    fill_in "Tonelagem bruto", with: @embarkation.tonelagem_bruto
    fill_in "Tonelagem liquida", with: @embarkation.tonelagem_liquida
    click_on "Create Embarkation"

    assert_text "Embarkation was successfully created"
    click_on "Back"
  end

  test "updating a Embarkation" do
    visit embarkations_url
    click_on "Edit", match: :first

    fill_in "Armador", with: @embarkation.armador_id
    fill_in "Bandeira actual", with: @embarkation.bandeira_actual
    fill_in "Bandeira origem", with: @embarkation.bandeira_origem
    fill_in "Boca", with: @embarkation.boca
    fill_in "Capitao", with: @embarkation.capitao_id
    fill_in "Comprimento", with: @embarkation.comprimento
    fill_in "Data contrucao", with: @embarkation.data_contrucao
    fill_in "Delegation", with: @embarkation.delegation_id
    fill_in "Estaleiro", with: @embarkation.estaleiro
    fill_in "Indicativo chamada", with: @embarkation.indicativo_chamada
    fill_in "Local atracagem", with: @embarkation.local_atracagem
    fill_in "Lotacao", with: @embarkation.lotacao
    fill_in "Matricula", with: @embarkation.matricula
    fill_in "Nome", with: @embarkation.nome
    fill_in "Nr imo", with: @embarkation.nr_imo
    fill_in "Nr max tripulante", with: @embarkation.nr_max_tripulante
    fill_in "Nr min tripulante", with: @embarkation.nr_min_tripulante
    fill_in "Pontal", with: @embarkation.pontal
    fill_in "Porto registro", with: @embarkation.porto_registro
    fill_in "Proprietario", with: @embarkation.proprietario_id
    fill_in "Stado da embarcacao", with: @embarkation.stado_da_embarcacao
    fill_in "Status", with: @embarkation.status
    fill_in "Tipo classificacao", with: @embarkation.tipo_classificacao_id
    fill_in "Tipo de casco", with: @embarkation.tipo_de_casco_id
    fill_in "Tipo embarcacao", with: @embarkation.tipo_embarcacao_id
    fill_in "Tonelagem bruto", with: @embarkation.tonelagem_bruto
    fill_in "Tonelagem liquida", with: @embarkation.tonelagem_liquida
    click_on "Update Embarkation"

    assert_text "Embarkation was successfully updated"
    click_on "Back"
  end

  test "destroying a Embarkation" do
    visit embarkations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Embarkation was successfully destroyed"
  end
end
