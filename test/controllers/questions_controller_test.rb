require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post :create, question: { ans1: @question.ans1, ans2: @question.ans2, ans3: @question.ans3, ans4: @question.ans4, ans5: @question.ans5, q1: @question.q1, q2: @question.q2, q3: @question.q3, q4: @question.q4, q5: @question.q5, question_name: @question.question_name, schoolclass_id: @question.schoolclass_id }
    end

    assert_redirected_to question_path(assigns(:question))
  end

  test "should show question" do
    get :show, id: @question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question
    assert_response :success
  end

  test "should update question" do
    patch :update, id: @question, question: { ans1: @question.ans1, ans2: @question.ans2, ans3: @question.ans3, ans4: @question.ans4, ans5: @question.ans5, q1: @question.q1, q2: @question.q2, q3: @question.q3, q4: @question.q4, q5: @question.q5, question_name: @question.question_name, schoolclass_id: @question.schoolclass_id }
    assert_redirected_to question_path(assigns(:question))
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question
    end

    assert_redirected_to questions_path
  end
end
