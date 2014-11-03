require 'test_helper'

class PuppyDogTwosControllerTest < ActionController::TestCase
  setup do
    @puppy_dog_two = puppy_dog_twos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puppy_dog_twos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puppy_dog_two" do
    assert_difference('PuppyDogTwo.count') do
      post :create, puppy_dog_two: { breed: @puppy_dog_two.breed, cuteness: @puppy_dog_two.cuteness, name: @puppy_dog_two.name }
    end

    assert_redirected_to puppy_dog_two_path(assigns(:puppy_dog_two))
  end

  test "should show puppy_dog_two" do
    get :show, id: @puppy_dog_two
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puppy_dog_two
    assert_response :success
  end

  test "should update puppy_dog_two" do
    patch :update, id: @puppy_dog_two, puppy_dog_two: { breed: @puppy_dog_two.breed, cuteness: @puppy_dog_two.cuteness, name: @puppy_dog_two.name }
    assert_redirected_to puppy_dog_two_path(assigns(:puppy_dog_two))
  end

  test "should destroy puppy_dog_two" do
    assert_difference('PuppyDogTwo.count', -1) do
      delete :destroy, id: @puppy_dog_two
    end

    assert_redirected_to puppy_dog_twos_path
  end
end
