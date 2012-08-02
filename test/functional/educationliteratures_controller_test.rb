require 'test_helper'

class EducationliteraturesControllerTest < ActionController::TestCase
  setup do
    @educationliterature = educationliteratures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:educationliteratures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create educationliterature" do
    assert_difference('Educationliterature.count') do
      post :create, :educationliterature => { :author => @educationliterature.author, :category => @educationliterature.category, :description => @educationliterature.description, :link => @educationliterature.link, :picture => @educationliterature.picture, :price => @educationliterature.price, :publisher => @educationliterature.publisher, :title => @educationliterature.title, :vendor => @educationliterature.vendor, :year => @educationliterature.year }
    end

    assert_redirected_to educationliterature_path(assigns(:educationliterature))
  end

  test "should show educationliterature" do
    get :show, :id => @educationliterature
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @educationliterature
    assert_response :success
  end

  test "should update educationliterature" do
    put :update, :id => @educationliterature, :educationliterature => { :author => @educationliterature.author, :category => @educationliterature.category, :description => @educationliterature.description, :link => @educationliterature.link, :picture => @educationliterature.picture, :price => @educationliterature.price, :publisher => @educationliterature.publisher, :title => @educationliterature.title, :vendor => @educationliterature.vendor, :year => @educationliterature.year }
    assert_redirected_to educationliterature_path(assigns(:educationliterature))
  end

  test "should destroy educationliterature" do
    assert_difference('Educationliterature.count', -1) do
      delete :destroy, :id => @educationliterature
    end

    assert_redirected_to educationliteratures_path
  end
end
