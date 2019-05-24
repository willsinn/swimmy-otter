class Api::V1::ScoresController < ApplicationController
  def index
    @scores = Score.all
    render json: @scores
  end

  def create
    @score = Score.new(score_params)
    if @score.save
      render json: @score, status: :accepted
    else
      render json: { errors: @score.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    byebug
  end


  private

  def score_params
    params.require(:score).permit(:user_id, :value)
  end
end
