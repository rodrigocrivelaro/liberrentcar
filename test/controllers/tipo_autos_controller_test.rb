require 'test_helper'

class TipoAutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_auto = tipo_autos(:one)
  end

  test "should get index" do
    get tipo_autos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_auto_url
    assert_response :success
  end

  test "should create tipo_auto" do
    assert_difference('TipoAuto.count') do
      post tipo_autos_url, params: { tipo_auto: { nome: @tipo_auto.nome } }
    end

    assert_redirected_to tipo_auto_url(TipoAuto.last)
  end

  test "should show tipo_auto" do
    get tipo_auto_url(@tipo_auto)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_auto_url(@tipo_auto)
    assert_response :success
  end

  test "should update tipo_auto" do
    patch tipo_auto_url(@tipo_auto), params: { tipo_auto: { nome: @tipo_auto.nome } }
    assert_redirected_to tipo_auto_url(@tipo_auto)
  end

  test "should destroy tipo_auto" do
    assert_difference('TipoAuto.count', -1) do
      delete tipo_auto_url(@tipo_auto)
    end

    assert_redirected_to tipo_autos_url
  end
end
