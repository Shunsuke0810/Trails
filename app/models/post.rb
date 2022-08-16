class Post < ApplicationRecord
  belongs_to :user
  has_many :labellings, dependent: :destroy
  has_many :labels, through: :labellings
  has_many :book_marks, dependent: :destroy
  has_many :book_mark_users, through: :book_marks, source: :user
end
