class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :house_rules
  has_many :comments
  has_many :user_games
  has_many :games, through: :user_games
  validates :username, presence: true, uniqueness: true       
  has_many :messages
  has_many :chatrooms, foreign_key: :owner_id

  def recommendations
    recommended_games = []

    # Find games of the same type that are not in the user's collection
    same_type_games = Game.where(type: games.pluck(:type)).where.not(id: games.pluck(:id))

    # If there are games of the same type, add them to the recommended list
    unless same_type_games.empty?
      recommended_games.concat(same_type_games.to_a)
    end

    # If there are less than 3 same type games, add randomly selected games to the recommended list
    if recommended_games.length < 3
      random_games = Game.where.not(id: games.pluck(:id)).limit(3 - recommended_games.length).to_a
      recommended_games.concat(random_games)
    end

    recommended_games
  end
end
