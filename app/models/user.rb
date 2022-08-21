class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  has_secure_password
  validates :password, length: { minimum: 6 }
  belongs_to :unit
  has_many :posts
  has_many :book_marks, dependent: :destroy
  has_many :book_mark_posts, through: :book_marks, source: :post
  has_many :comments, dependent: :destroy
end
