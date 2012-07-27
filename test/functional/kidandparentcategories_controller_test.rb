require 'test_helper'

class KidandparentcategoriesControllerTest < ActionController::TestCase
  setup do
    @kidandparentcategory = kidandparentcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kidandparentcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kidandparentcategory" do
    assert_difference('Kidandparentcategory.count') do
      post :create, :kidandparentcategory => { :categoryid => @kidandparentcategory.categoryid, :name => @kidandparentcategory.name, :parentcategoryid => @kidandparentcategory.parentcategoryid }
    end

    assert_redirected_to kidandparentcategory_path(assigns(:kidandparentcategory))
  end

  test "should show kidandparentcategory" do
    get :show, :id => @kidandparentcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kidandparentcategory
    assert_response :success
  end

  test "should update kidandparentcategory" do
    put :update, :id => @kidandparentcategory, :kidandparentcategory => { :categoryid => @kidandparentcategory.categoryid, :name => @kidandparentcategory.name, :parentcategoryid => @kidandparentcategory.parentcategoryid }
    assert_redirected_to kidandparentcategory_path(assigns(:kidandparentcategory))
  end

  test "should destroy kidandparentcategory" do
    assert_difference('Kidandparentcategory.count', -1) do
      delete :destroy, :id => @kidandparentcategory
    end

    assert_redirected_to kidandparentcategories_path
  end
end
