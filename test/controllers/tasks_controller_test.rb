require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index, :ticket_id=> 1
    assert_response :success
  end

  test "should get create" do
    get :create,:ticket_id=> 1
    assert_response :success
  end

  # test "should get store" do
  #   get :store
  #   assert_response :success
  # end

  test "should get show" do
    get :show,:ticket_id=> 1
    assert_response :success
  end

  # test "should get edit" do
  #   get :edit
  #   assert_response :success
  # end

  test "should get update" do
    get :update,:ticket_id=> 1
    assert_response :success
  end

  test "should get destroy" do
    get :destroy,:ticket_id=> 1
    assert_response :success
  end

end
