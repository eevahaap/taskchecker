require 'test_helper'

class AnswersControllerTest < ActionController::TestCase
  setup do
    @answer = answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer" do
    assert_difference('Answer.count') do
      post :create, answer: { ans1: @answer.ans1, ans2: @answer.ans2, ans3: @answer.ans3, ans4: @answer.ans4, ans5: @answer.ans5, res1: @answer.res1, res2: @answer.res2, res3: @answer.res3, res4: @answer.res4, res5: @answer.res5, total_res: @answer.total_res, username: @answer.username }
    end

    assert_redirected_to answer_path(assigns(:answer))
  end

  test "should show answer" do
    get :show, id: @answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer
    assert_response :success
  end

  test "should update answer" do
    patch :update, id: @answer, answer: { ans1: @answer.ans1, ans2: @answer.ans2, ans3: @answer.ans3, ans4: @answer.ans4, ans5: @answer.ans5, res1: @answer.res1, res2: @answer.res2, res3: @answer.res3, res4: @answer.res4, res5: @answer.res5, total_res: @answer.total_res, username: @answer.username }
    assert_redirected_to answer_path(assigns(:answer))
  end

  test "should destroy answer" do
    assert_difference('Answer.count', -1) do
      delete :destroy, id: @answer
    end

    assert_redirected_to answers_path
  end
end
