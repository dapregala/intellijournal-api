class QuestionSetsController < ApplicationController
  before_action :set_question_set, only: [:show, :update, :destroy]

  # GET /question_sets
  def index
    @question_sets = QuestionSet.all

    render json: @question_sets
  end

  # GET /question_sets/1
  def show
    render json: @question_set
  end

  # POST /question_sets
  def create
    @question_set = QuestionSet.new(question_set_params)

    if @question_set.save
      render json: @question_set, status: :created, location: @question_set
    else
      render json: @question_set.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /question_sets/1
  def update
    if @question_set.update(question_set_params)
      render json: @question_set
    else
      render json: @question_set.errors, status: :unprocessable_entity
    end
  end

  # DELETE /question_sets/1
  def destroy
    @question_set.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_set
      @question_set = QuestionSet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_set_params
      params.fetch(:question_set, {})
    end
end
