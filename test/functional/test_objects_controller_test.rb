require 'test_helper'

class TestObjectsControllerTest < ActionController::TestCase
  setup do
    @test_object = test_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_object" do
    assert_difference('TestObject.count') do
      post :create, test_object: { desc: @test_object.desc, detail_desc: @test_object.detail_desc, photo_extension: @test_object.photo_extension, punch: @test_object.punch, punch_year: @test_object.punch_year, weight: @test_object.weight }
    end

    assert_redirected_to test_object_path(assigns(:test_object))
  end

  test "should show test_object" do
    get :show, id: @test_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_object
    assert_response :success
  end

  test "should update test_object" do
    put :update, id: @test_object, test_object: { desc: @test_object.desc, detail_desc: @test_object.detail_desc, photo_extension: @test_object.photo_extension, punch: @test_object.punch, punch_year: @test_object.punch_year, weight: @test_object.weight }
    assert_redirected_to test_object_path(assigns(:test_object))
  end

  test "should destroy test_object" do
    assert_difference('TestObject.count', -1) do
      delete :destroy, id: @test_object
    end

    assert_redirected_to test_objects_path
  end
end
