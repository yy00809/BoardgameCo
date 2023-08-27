class GamesController < ApplicationController
  before_action :authenticate_user!
  def index
    @games = Game.paginate(page: params[:page], per_page: 6)
  end
  
  def show
    @game = Game.find(params[:id])
  end

  def q_and_as
    @game = Game.find(params[:id])
    @q_and_as = @game.q_and_as
  end
end
