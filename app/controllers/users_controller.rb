class UsersController < ApplicationController
  before_action :authenticate_user!

  def recommendations
    @recommended_games = current_user.recommendations
  end
end
