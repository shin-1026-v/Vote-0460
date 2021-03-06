class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  has_secure_password
  has_many :answer_sets
  has_many :news_topics
end
