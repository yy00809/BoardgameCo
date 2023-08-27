class Rating < ApplicationRecord
  GAME_RATING_RANGE = (0..5)

  belongs_to :game
  belongs_to :user

  validates :value, presence: true, inclusion: { in: GAME_RATING_RANGE }
  validates :user_id, uniqueness: { scope: :game_id }
end