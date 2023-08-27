class Game < ApplicationRecord
  self.inheritance_column = 'category'
  has_many :user_games
  has_many :users, through: :user_games
  has_many :comments
  has_many :ratings
  has_many :house_rules
  has_many :game_variants
  has_many :q_and_as
  def calculate_average_rate
    if ratings.any?
      (((rate.to_f * (ratings.count + 1)) + ratings.sum(:value)) / (ratings.count + 2)).round(1)
    else
      rate.to_f.round(1)
    end
  end
end
