require 'test_helper'

class NonfictionliteraturecategoriesControllerTest < ActionController::TestCase
  setup do
    @nonfictionliteraturecategory = nonfictionliteraturecategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nonfictionliteraturecategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nonfictionliteraturecategory" do
    assert_difference('Nonfictionliteraturecategory.count') do
      post :create, :nonfictionliteraturecategory => { :category => @nonfictionliteraturecategory.category, :name => @nonfictionliteraturecategory.name, :parentcategoryid => @nonfictionliteraturecategory.parentcategoryid }
    end

    assert_redirected_to nonfictionliteraturecategory_path(assigns(:nonfictionliteraturecategory))
  end

  test "should show nonfictionliteraturecategory" do
    get :show, :id => @nonfictionliteraturecategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nonfictionliteraturecategory
    assert_response :success
  end

  test "should update nonfictionliteraturecategory" do
    put :update, :id => @nonfictionliteraturecategory, :nonfictionliteraturecategory => { :category => @nonfictionliteraturecategory.category, :name => @nonfictionliteraturecategory.name, :parentcategoryid => @nonfictionliteraturecategory.parentcategoryid }
    assert_redirected_to nonfictionliteraturecategory_path(assigns(:nonfictionliteraturecategory))
  end

  test "should destroy nonfictionliteraturecategory" do
    assert_difference('Nonfictionliteraturecategory.count', -1) do
      delete :destroy, :id => @nonfictionliteraturecategory
    end

    assert_redirected_to nonfictionliteraturecategories_path
  end
end
