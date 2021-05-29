require 'test_helper'

class EmbarkationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @embarkation = embarkations(:one)
  end

  test "should get index" do
    get embarkations_url
    assert_response :success
  end

  test "should get new" do
    get new_embarkation_url
    assert_response :success
  end

  test "should create embarkation" do
    assert_difference('Embarkation.count') do
      post embarkations_url, params: { embarkation: { armador_id: @embarkation.armador_id, bandeira_actual: @embarkation.bandeira_actual, bandeira_origem: @embarkation.bandeira_origem, boca: @embarkation.boca, capitao_id: @embarkation.capitao_id, comprimento: @embarkation.comprimento, data_contrucao: @embarkation.data_contrucao, delegation_id: @embarkation.delegation_id, estaleiro: @embarkation.estaleiro, indicativo_chamada: @embarkation.indicativo_chamada, local_atracagem: @embarkation.local_atracagem, lotacao: @embarkation.lotacao, matricula: @embarkation.matricula, nome: @embarkation.nome, nr_imo: @embarkation.nr_imo, nr_max_tripulante: @embarkation.nr_max_tripulante, nr_min_tripulante: @embarkation.nr_min_tripulante, pontal: @embarkation.pontal, porto_registro: @embarkation.porto_registro, proprietario_id: @embarkation.proprietario_id, stado_da_embarcacao: @embarkation.stado_da_embarcacao, status: @embarkation.status, tipo_classificacao_id: @embarkation.tipo_classificacao_id, tipo_de_casco_id: @embarkation.tipo_de_casco_id, tipo_embarcacao_id: @embarkation.tipo_embarcacao_id, tonelagem_bruto: @embarkation.tonelagem_bruto, tonelagem_liquida: @embarkation.tonelagem_liquida } }
    end

    assert_redirected_to embarkation_url(Embarkation.last)
  end

  test "should show embarkation" do
    get embarkation_url(@embarkation)
    assert_response :success
  end

  test "should get edit" do
    get edit_embarkation_url(@embarkation)
    assert_response :success
  end

  test "should update embarkation" do
    patch embarkation_url(@embarkation), params: { embarkation: { armador_id: @embarkation.armador_id, bandeira_actual: @embarkation.bandeira_actual, bandeira_origem: @embarkation.bandeira_origem, boca: @embarkation.boca, capitao_id: @embarkation.capitao_id, comprimento: @embarkation.comprimento, data_contrucao: @embarkation.data_contrucao, delegation_id: @embarkation.delegation_id, estaleiro: @embarkation.estaleiro, indicativo_chamada: @embarkation.indicativo_chamada, local_atracagem: @embarkation.local_atracagem, lotacao: @embarkation.lotacao, matricula: @embarkation.matricula, nome: @embarkation.nome, nr_imo: @embarkation.nr_imo, nr_max_tripulante: @embarkation.nr_max_tripulante, nr_min_tripulante: @embarkation.nr_min_tripulante, pontal: @embarkation.pontal, porto_registro: @embarkation.porto_registro, proprietario_id: @embarkation.proprietario_id, stado_da_embarcacao: @embarkation.stado_da_embarcacao, status: @embarkation.status, tipo_classificacao_id: @embarkation.tipo_classificacao_id, tipo_de_casco_id: @embarkation.tipo_de_casco_id, tipo_embarcacao_id: @embarkation.tipo_embarcacao_id, tonelagem_bruto: @embarkation.tonelagem_bruto, tonelagem_liquida: @embarkation.tonelagem_liquida } }
    assert_redirected_to embarkation_url(@embarkation)
  end

  test "should destroy embarkation" do
    assert_difference('Embarkation.count', -1) do
      delete embarkation_url(@embarkation)
    end

    assert_redirected_to embarkations_url
  end
end
