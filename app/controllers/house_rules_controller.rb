class HouseRulesController < ApplicationController
  before_action :set_game
  before_action :set_house_rule, only: [:show, :edit, :update, :destroy]
  before_action :authorize_house_rule, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @house_rules = @game.house_rules
  end

  def show
  end

  def new
    @house_rule = HouseRule.new
  end

  def create
    @house_rule = @game.house_rules.build(house_rule_params)
    @house_rule.user = current_user

    if @house_rule.save
      redirect_to game_house_rules_path(@game), notice: 'House rule was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @house_rule.update(house_rule_params)
      redirect_to game_house_rules_path(@game), notice: 'House rule was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @house_rule.destroy
    redirect_to game_house_rules_path(@game), notice: 'House rule was successfully destroyed.'
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def set_house_rule
    @house_rule = @game.house_rules.find(params[:id])
  end

  def authorize_house_rule
    unless @house_rule.user == current_user
      redirect_to game_house_rule_path(@game, @house_rule), alert: 'You are not authorized to perform this action.'
    end
  end

  def house_rule_params
    params.require(:house_rule).permit(:name, :content)
  end
end
