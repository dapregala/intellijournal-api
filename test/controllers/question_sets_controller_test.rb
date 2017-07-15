require 'test_helper'

class QuestionSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_set = question_sets(:one)
  end

  test "should get index" do
    get question_sets_url, as: :json
    assert_response :success
  end

  test "should create question_set" do
    assert_difference('QuestionSet.count') do
      post question_sets_url, params: { question_set: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show question_set" do
    get question_set_url(@question_set), as: :json
    assert_response :success
  end

  test "should update question_set" do
    patch question_set_url(@question_set), params: { question_set: {  } }, as: :json
    assert_response 200
  end

  test "should destroy question_set" do
    assert_difference('QuestionSet.count', -1) do
      delete question_set_url(@question_set), as: :json
    end

    assert_response 204
  end
end
