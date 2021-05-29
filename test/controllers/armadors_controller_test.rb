require 'test_helper'

class ArmadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @armador = armadors(:one)
  end

  test "should get index" do
    get armadors_url
    assert_response :success
  end

  test "should get new" do
    get new_armador_url
    assert_response :success
  end

  test "should create armador" do
    assert_difference('Armador.count') do
      post armadors_url, params: { armador: { agente: @armador.agente, morada: @armador.morada, nome: @armador.nome, pais: @armador.pais, status: @armador.status, tel: @armador.tel } }
    end

    assert_redirected_to armador_url(Armador.last)
  end

  test "should show armador" do
    get armador_url(@armador)
    assert_response :success
  end

  test "should get edit" do
    get edit_armador_url(@armador)
    assert_response :success
  end

  test "should update armador" do
    patch armador_url(@armador), params: { armador: { agente: @armador.agente, morada: @armador.morada, nome: @armador.nome, pais: @armador.pais, status: @armador.status, tel: @armador.tel } }
    assert_redirected_to armador_url(@armador)
  end

  test "should destroy armador" do
    assert_difference('Armador.count', -1) do
      delete armador_url(@armador)
    end

    assert_redirected_to armadors_url
  end
end
