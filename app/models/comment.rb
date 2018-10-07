class Comment < ApplicationRecord
  belongs_to :user

  belongs_to :commentable, polymorphic: true, optional: true
  has_many :comments, as: :commentable

  validates_presence_of :content
end
