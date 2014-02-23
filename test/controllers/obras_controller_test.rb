require 'test_helper'

class ObrasControllerTest < ActionController::TestCase
  setup do
    @obra = obras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:obras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create obra" do
    assert_difference('Obra.count') do
      post :create, obra: { autor: @obra.autor, calificacion: @obra.calificacion, descripcion: @obra.descripcion, imagen: @obra.imagen, titulo: @obra.titulo }
    end

    assert_redirected_to obra_path(assigns(:obra))
  end

  test "should show obra" do
    get :show, id: @obra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @obra
    assert_response :success
  end

  test "should update obra" do
    patch :update, id: @obra, obra: { autor: @obra.autor, calificacion: @obra.calificacion, descripcion: @obra.descripcion, imagen: @obra.imagen, titulo: @obra.titulo }
    assert_redirected_to obra_path(assigns(:obra))
  end

  test "should destroy obra" do
    assert_difference('Obra.count', -1) do
      delete :destroy, id: @obra
    end

    assert_redirected_to obras_path
  end
end
