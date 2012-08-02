require 'test_helper'

class BooksalesControllerTest < ActionController::TestCase
  setup do
    @booksale = booksales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:booksales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booksale" do
    assert_difference('Booksale.count') do
      post :create, :booksale => { :description => @booksale.description, :link => @booksale.link, :pict => @booksale.pict, :price => @booksale.price, :publisher => @booksale.publisher, :title => @booksale.title, :vendor => @booksale.vendor, :year => @booksale.year }
    end

    assert_redirected_to booksale_path(assigns(:booksale))
  end

  test "should show booksale" do
    get :show, :id => @booksale
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @booksale
    assert_response :success
  end

  test "should update booksale" do
    put :update, :id => @booksale, :booksale => { :description => @booksale.description, :link => @booksale.link, :pict => @booksale.pict, :price => @booksale.price, :publisher => @booksale.publisher, :title => @booksale.title, :vendor => @booksale.vendor, :year => @booksale.year }
    assert_redirected_to booksale_path(assigns(:booksale))
  end

  test "should destroy booksale" do
    assert_difference('Booksale.count', -1) do
      delete :destroy, :id => @booksale
    end

    assert_redirected_to booksales_path
  end
end
