require 'test_helper'

class EducationliteraturecategoriesControllerTest < ActionController::TestCase
  setup do
    @educationliteraturecategory = educationliteraturecategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:educationliteraturecategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create educationliteraturecategory" do
    assert_difference('Educationliteraturecategory.count') do
      post :create, :educationliteraturecategory => { :category => @educationliteraturecategory.category, :name => @educationliteraturecategory.name, :parentcategoryid => @educationliteraturecategory.parentcategoryid }
    end

    assert_redirected_to educationliteraturecategory_path(assigns(:educationliteraturecategory))
  end

  test "should show educationliteraturecategory" do
    get :show, :id => @educationliteraturecategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @educationliteraturecategory
    assert_response :success
  end

  test "should update educationliteraturecategory" do
    put :update, :id => @educationliteraturecategory, :educationliteraturecategory => { :category => @educationliteraturecategory.category, :name => @educationliteraturecategory.name, :parentcategoryid => @educationliteraturecategory.parentcategoryid }
    assert_redirected_to educationliteraturecategory_path(assigns(:educationliteraturecategory))
  end

  test "should destroy educationliteraturecategory" do
    assert_difference('Educationliteraturecategory.count', -1) do
      delete :destroy, :id => @educationliteraturecategory
    end

    assert_redirected_to educationliteraturecategories_path
  end
end
