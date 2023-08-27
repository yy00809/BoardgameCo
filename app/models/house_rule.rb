class HouseRule < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :name, presence: true
  validates :content, presence: true
end
