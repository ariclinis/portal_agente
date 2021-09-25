require 'test_helper'

class DesembarkationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desembarkation = desembarkations(:one)
  end

  test "should get index" do
    get desembarkations_url
    assert_response :success
  end

  test "should get new" do
    get new_desembarkation_url
    assert_response :success
  end

  test "should create desembarkation" do
    assert_difference('Desembarkation.count') do
      post desembarkations_url, params: { desembarkation: { armador_id: @desembarkation.armador_id, data_emissao: @desembarkation.data_emissao, data_entrada: @desembarkation.data_entrada, data_saida: @desembarkation.data_saida, data_validade: @desembarkation.data_validade, email: @desembarkation.email, embarkation_id: @desembarkation.embarkation_id, estadia_final: @desembarkation.estadia_final, estadia_prev: @desembarkation.estadia_prev, hora_entrada: @desembarkation.hora_entrada, hora_saida: @desembarkation.hora_saida, n_doc: @desembarkation.n_doc, n_movimento: @desembarkation.n_movimento, nacionalida: @desembarkation.nacionalida, nome_comandante: @desembarkation.nome_comandante, porto_destino: @desembarkation.porto_destino, porto_origem: @desembarkation.porto_origem, status: @desembarkation.status, tipo_doc: @desembarkation.tipo_doc, user: @desembarkation.user } }
    end

    assert_redirected_to desembarkation_url(Desembarkation.last)
  end

  test "should show desembarkation" do
    get desembarkation_url(@desembarkation)
    assert_response :success
  end

  test "should get edit" do
    get edit_desembarkation_url(@desembarkation)
    assert_response :success
  end

  test "should update desembarkation" do
    patch desembarkation_url(@desembarkation), params: { desembarkation: { armador_id: @desembarkation.armador_id, data_emissao: @desembarkation.data_emissao, data_entrada: @desembarkation.data_entrada, data_saida: @desembarkation.data_saida, data_validade: @desembarkation.data_validade, email: @desembarkation.email, embarkation_id: @desembarkation.embarkation_id, estadia_final: @desembarkation.estadia_final, estadia_prev: @desembarkation.estadia_prev, hora_entrada: @desembarkation.hora_entrada, hora_saida: @desembarkation.hora_saida, n_doc: @desembarkation.n_doc, n_movimento: @desembarkation.n_movimento, nacionalida: @desembarkation.nacionalida, nome_comandante: @desembarkation.nome_comandante, porto_destino: @desembarkation.porto_destino, porto_origem: @desembarkation.porto_origem, status: @desembarkation.status, tipo_doc: @desembarkation.tipo_doc, user: @desembarkation.user } }
    assert_redirected_to desembarkation_url(@desembarkation)
  end

  test "should destroy desembarkation" do
    assert_difference('Desembarkation.count', -1) do
      delete desembarkation_url(@desembarkation)
    end

    assert_redirected_to desembarkations_url
  end
end
