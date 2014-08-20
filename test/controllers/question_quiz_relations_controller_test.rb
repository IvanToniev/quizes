require 'test_helper'

class QuestionQuizRelationsControllerTest < ActionController::TestCase
  setup do
    @question_quiz_relation = question_quiz_relations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_quiz_relations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_quiz_relation" do
    assert_difference('QuestionQuizRelation.count') do
      post :create, question_quiz_relation: { question_id: @question_quiz_relation.question_id, quiz_id: @question_quiz_relation.quiz_id, show_order: @question_quiz_relation.show_order }
    end

    assert_redirected_to question_quiz_relation_path(assigns(:question_quiz_relation))
  end

  test "should show question_quiz_relation" do
    get :show, id: @question_quiz_relation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question_quiz_relation
    assert_response :success
  end

  test "should update question_quiz_relation" do
    patch :update, id: @question_quiz_relation, question_quiz_relation: { question_id: @question_quiz_relation.question_id, quiz_id: @question_quiz_relation.quiz_id, show_order: @question_quiz_relation.show_order }
    assert_redirected_to question_quiz_relation_path(assigns(:question_quiz_relation))
  end

  test "should destroy question_quiz_relation" do
    assert_difference('QuestionQuizRelation.count', -1) do
      delete :destroy, id: @question_quiz_relation
    end

    assert_redirected_to question_quiz_relations_path
  end
end
