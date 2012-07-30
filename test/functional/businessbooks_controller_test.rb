require 'test_helper'

class BusinessbooksControllerTest < ActionController::TestCase
  setup do
    @businessbook = businessbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:businessbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create businessbook" do
    assert_difference('Businessbook.count') do
      post :create, :businessbook => { :author => @businessbook.author, :category => @businessbook.category, :description => @businessbook.description, :link => @businessbook.link, :picture => @businessbook.picture, :price => @businessbook.price, :publisher => @businessbook.publisher, :title => @businessbook.title, :vendor => @businessbook.vendor, :year => @businessbook.year }
    end

    assert_redirected_to businessbook_path(assigns(:businessbook))
  end

  test "should show businessbook" do
    get :show, :id => @businessbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @businessbook
    assert_response :success
  end

  test "should update businessbook" do
    put :update, :id => @businessbook, :businessbook => { :author => @businessbook.author, :category => @businessbook.category, :description => @businessbook.description, :link => @businessbook.link, :picture => @businessbook.picture, :price => @businessbook.price, :publisher => @businessbook.publisher, :title => @businessbook.title, :vendor => @businessbook.vendor, :year => @businessbook.year }
    assert_redirected_to businessbook_path(assigns(:businessbook))
  end

  test "should destroy businessbook" do
    assert_difference('Businessbook.count', -1) do
      delete :destroy, :id => @businessbook
    end

    assert_redirected_to businessbooks_path
  end
end
