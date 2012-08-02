require 'test_helper'

class BooksalecategoriesControllerTest < ActionController::TestCase
  setup do
    @booksalecategory = booksalecategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:booksalecategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booksalecategory" do
    assert_difference('Booksalecategory.count') do
      post :create, :booksalecategory => { :category => @booksalecategory.category, :name => @booksalecategory.name, :parentcategoryid => @booksalecategory.parentcategoryid }
    end

    assert_redirected_to booksalecategory_path(assigns(:booksalecategory))
  end

  test "should show booksalecategory" do
    get :show, :id => @booksalecategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @booksalecategory
    assert_response :success
  end

  test "should update booksalecategory" do
    put :update, :id => @booksalecategory, :booksalecategory => { :category => @booksalecategory.category, :name => @booksalecategory.name, :parentcategoryid => @booksalecategory.parentcategoryid }
    assert_redirected_to booksalecategory_path(assigns(:booksalecategory))
  end

  test "should destroy booksalecategory" do
    assert_difference('Booksalecategory.count', -1) do
      delete :destroy, :id => @booksalecategory
    end

    assert_redirected_to booksalecategories_path
  end
end
