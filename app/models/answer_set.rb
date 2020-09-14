class AnswerSet < ApplicationRecord
  belongs_to :user
  belongs_to :news_topic
end
