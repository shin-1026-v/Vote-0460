class NewsTopic < ApplicationRecord
  belongs_to :user
  has_many :answer_sets
  default_scope -> { order(created_at: :desc) }

 #news_topicを回答する
  #def answer(user)
    #answer_sets.create(user_id: user.id)
  #end
end
