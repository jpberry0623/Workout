require 'test_helper'

class ExercisehistoriesControllerTest < ActionController::TestCase
  setup do
    @exercisehistory = exercisehistories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercisehistories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercisehistory" do
    assert_difference('Exercisehistory.count') do
      post :create, exercisehistory: {  }
    end

    assert_redirected_to exercisehistory_path(assigns(:exercisehistory))
  end

  test "should show exercisehistory" do
    get :show, id: @exercisehistory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercisehistory
    assert_response :success
  end

  test "should update exercisehistory" do
    patch :update, id: @exercisehistory, exercisehistory: {  }
    assert_redirected_to exercisehistory_path(assigns(:exercisehistory))
  end

  test "should destroy exercisehistory" do
    assert_difference('Exercisehistory.count', -1) do
      delete :destroy, id: @exercisehistory
    end

    assert_redirected_to exercisehistories_path
  end
end
