class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @game = Game.find(params[:game_id])
    @comment = @game.comments.build(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
    redirect_to @game, notice: "Comment created successfully."
    else
    redirect_to @game, alert: "Failed to create comment."
    end
  end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment.destroy
    redirect_to @comment.game, notice: "Comment deleted successfully."
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :game_id)
  end
  
end
  