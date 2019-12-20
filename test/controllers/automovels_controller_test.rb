require 'test_helper'

class AutomovelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @automovel = automovels(:one)
  end

  test "should get index" do
    get automovels_url
    assert_response :success
  end

  test "should get new" do
    get new_automovel_url
    assert_response :success
  end

  test "should create automovel" do
    assert_difference('Automovel.count') do
      post automovels_url, params: { automovel: { cor: @automovel.cor, custo_diario: @automovel.custo_diario, modelo: @automovel.modelo, placa: @automovel.placa, tipo_auto_id: @automovel.tipo_auto_id } }
    end

    assert_redirected_to automovel_url(Automovel.last)
  end

  test "should show automovel" do
    get automovel_url(@automovel)
    assert_response :success
  end

  test "should get edit" do
    get edit_automovel_url(@automovel)
    assert_response :success
  end

  test "should update automovel" do
    patch automovel_url(@automovel), params: { automovel: { cor: @automovel.cor, custo_diario: @automovel.custo_diario, modelo: @automovel.modelo, placa: @automovel.placa, tipo_auto_id: @automovel.tipo_auto_id } }
    assert_redirected_to automovel_url(@automovel)
  end

  test "should destroy automovel" do
    assert_difference('Automovel.count', -1) do
      delete automovel_url(@automovel)
    end

    assert_redirected_to automovels_url
  end
end
