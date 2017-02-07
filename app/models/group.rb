class Group < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :posts
  has_many :groups_relationships
  has_many :members, through: :groups_relationships, source: :user
end
