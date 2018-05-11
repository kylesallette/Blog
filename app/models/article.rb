class Article < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates_presence_of :title, :description
end
