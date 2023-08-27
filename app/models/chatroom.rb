class Chatroom < ApplicationRecord
  before_save :generate_slug
  belongs_to :owner, class_name: "User"
  has_many :messages
  def to_param
    slug
  end

  private

  def generate_slug
    self.slug = name.parameterize
  end
end
