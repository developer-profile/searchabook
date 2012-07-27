require 'test_helper'

class KidandparentbooksControllerTest < ActionController::TestCase
  setup do
    @kidandparentbook = kidandparentbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kidandparentbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kidandparentbook" do
    assert_difference('Kidandparentbook.count') do
      post :create, :kidandparentbook => { :author => @kidandparentbook.author, :category => @kidandparentbook.category, :description => @kidandparentbook.description, :link => @kidandparentbook.link, :picture => @kidandparentbook.picture, :price => @kidandparentbook.price, :publisher => @kidandparentbook.publisher, :title => @kidandparentbook.title, :vendor => @kidandparentbook.vendor, :year => @kidandparentbook.year }
    end

    assert_redirected_to kidandparentbook_path(assigns(:kidandparentbook))
  end

  test "should show kidandparentbook" do
    get :show, :id => @kidandparentbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kidandparentbook
    assert_response :success
  end

  test "should update kidandparentbook" do
    put :update, :id => @kidandparentbook, :kidandparentbook => { :author => @kidandparentbook.author, :category => @kidandparentbook.category, :description => @kidandparentbook.description, :link => @kidandparentbook.link, :picture => @kidandparentbook.picture, :price => @kidandparentbook.price, :publisher => @kidandparentbook.publisher, :title => @kidandparentbook.title, :vendor => @kidandparentbook.vendor, :year => @kidandparentbook.year }
    assert_redirected_to kidandparentbook_path(assigns(:kidandparentbook))
  end

  test "should destroy kidandparentbook" do
    assert_difference('Kidandparentbook.count', -1) do
      delete :destroy, :id => @kidandparentbook
    end

    assert_redirected_to kidandparentbooks_path
  end
end
