class CollectionsController < ApplicationController
  def index
    @games = current_user.games.paginate(page: params[:page], per_page: 6)
  end
end
