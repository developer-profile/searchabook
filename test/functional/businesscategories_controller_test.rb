require 'test_helper'

class BusinesscategoriesControllerTest < ActionController::TestCase
  setup do
    @businesscategory = businesscategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:businesscategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create businesscategory" do
    assert_difference('Businesscategory.count') do
      post :create, :businesscategory => { :category => @businesscategory.category, :name => @businesscategory.name, :parentcategoryid => @businesscategory.parentcategoryid }
    end

    assert_redirected_to businesscategory_path(assigns(:businesscategory))
  end

  test "should show businesscategory" do
    get :show, :id => @businesscategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @businesscategory
    assert_response :success
  end

  test "should update businesscategory" do
    put :update, :id => @businesscategory, :businesscategory => { :category => @businesscategory.category, :name => @businesscategory.name, :parentcategoryid => @businesscategory.parentcategoryid }
    assert_redirected_to businesscategory_path(assigns(:businesscategory))
  end

  test "should destroy businesscategory" do
    assert_difference('Businesscategory.count', -1) do
      delete :destroy, :id => @businesscategory
    end

    assert_redirected_to businesscategories_path
  end
end
