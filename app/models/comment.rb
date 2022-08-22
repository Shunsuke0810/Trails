class Comment < ApplicationRecord
  validates :content, presence: true
  belongs_to :post
  belongs_to :user
  validates :content, presence: true
end
