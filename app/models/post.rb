class Post < ApplicationRecord
  validates :ocurence, presence: true
  validates :content, presence: true
  belongs_to :user
  has_many :labellings, dependent: :destroy
  has_many :labels, through: :labellings
  has_many :book_marks, dependent: :destroy
  has_many :book_mark_users, through: :book_marks, source: :user
  has_many :comments, dependent: :destroy
end
