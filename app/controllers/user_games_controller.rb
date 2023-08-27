class UserGamesController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @game = Game.find(params[:game_id])
    current_user.games << @game
    redirect_to @game
  end
  
  def destroy
    @game = Game.find(params[:game_id])
    current_user.games.delete(@game)
    redirect_to @game
  end

end