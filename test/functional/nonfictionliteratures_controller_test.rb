require 'test_helper'

class NonfictionliteraturesControllerTest < ActionController::TestCase
  setup do
    @nonfictionliterature = nonfictionliteratures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nonfictionliteratures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nonfictionliterature" do
    assert_difference('Nonfictionliterature.count') do
      post :create, :nonfictionliterature => { :author => @nonfictionliterature.author, :category => @nonfictionliterature.category, :description => @nonfictionliterature.description, :link => @nonfictionliterature.link, :picture => @nonfictionliterature.picture, :price => @nonfictionliterature.price, :publisher => @nonfictionliterature.publisher, :title => @nonfictionliterature.title, :vendor => @nonfictionliterature.vendor, :year => @nonfictionliterature.year }
    end

    assert_redirected_to nonfictionliterature_path(assigns(:nonfictionliterature))
  end

  test "should show nonfictionliterature" do
    get :show, :id => @nonfictionliterature
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nonfictionliterature
    assert_response :success
  end

  test "should update nonfictionliterature" do
    put :update, :id => @nonfictionliterature, :nonfictionliterature => { :author => @nonfictionliterature.author, :category => @nonfictionliterature.category, :description => @nonfictionliterature.description, :link => @nonfictionliterature.link, :picture => @nonfictionliterature.picture, :price => @nonfictionliterature.price, :publisher => @nonfictionliterature.publisher, :title => @nonfictionliterature.title, :vendor => @nonfictionliterature.vendor, :year => @nonfictionliterature.year }
    assert_redirected_to nonfictionliterature_path(assigns(:nonfictionliterature))
  end

  test "should destroy nonfictionliterature" do
    assert_difference('Nonfictionliterature.count', -1) do
      delete :destroy, :id => @nonfictionliterature
    end

    assert_redirected_to nonfictionliteratures_path
  end
end
