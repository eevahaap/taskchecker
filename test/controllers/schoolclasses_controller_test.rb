require 'test_helper'

class SchoolclassesControllerTest < ActionController::TestCase
  setup do
    @schoolclass = schoolclasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schoolclasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schoolclass" do
    assert_difference('Schoolclass.count') do
      post :create, schoolclass: { name: @schoolclass.name }
    end

    assert_redirected_to schoolclass_path(assigns(:schoolclass))
  end

  test "should show schoolclass" do
    get :show, id: @schoolclass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schoolclass
    assert_response :success
  end

  test "should update schoolclass" do
    patch :update, id: @schoolclass, schoolclass: { name: @schoolclass.name }
    assert_redirected_to schoolclass_path(assigns(:schoolclass))
  end

  test "should destroy schoolclass" do
    assert_difference('Schoolclass.count', -1) do
      delete :destroy, id: @schoolclass
    end

    assert_redirected_to schoolclasses_path
  end
end
