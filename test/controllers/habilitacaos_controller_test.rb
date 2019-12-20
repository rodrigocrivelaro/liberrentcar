require 'test_helper'

class HabilitacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @habilitacao = habilitacaos(:one)
  end

  test "should get index" do
    get habilitacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_habilitacao_url
    assert_response :success
  end

  test "should create habilitacao" do
    assert_difference('Habilitacao.count') do
      post habilitacaos_url, params: { habilitacao: { modalidade: @habilitacao.modalidade, numero: @habilitacao.numero, pessoa_id: @habilitacao.pessoa_id, validade: @habilitacao.validade } }
    end

    assert_redirected_to habilitacao_url(Habilitacao.last)
  end

  test "should show habilitacao" do
    get habilitacao_url(@habilitacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_habilitacao_url(@habilitacao)
    assert_response :success
  end

  test "should update habilitacao" do
    patch habilitacao_url(@habilitacao), params: { habilitacao: { modalidade: @habilitacao.modalidade, numero: @habilitacao.numero, pessoa_id: @habilitacao.pessoa_id, validade: @habilitacao.validade } }
    assert_redirected_to habilitacao_url(@habilitacao)
  end

  test "should destroy habilitacao" do
    assert_difference('Habilitacao.count', -1) do
      delete habilitacao_url(@habilitacao)
    end

    assert_redirected_to habilitacaos_url
  end
end
