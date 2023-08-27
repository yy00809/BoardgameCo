class RatingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @game = Game.find(params[:game_id])
    @rating = @game.ratings.new(rating_params)
    @rating.user = current_user

    if @rating.save
    redirect_to @game, notice: "Thanks for rating!"
    else
    redirect_to @game, alert: "Rating not saved."
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:value, :game_id)
  end
end