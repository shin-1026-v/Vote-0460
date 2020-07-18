class AdduseridToNewsTopics < ActiveRecord::Migration[5.1]
  def change
    add_reference :news_topics, :user, index: true
  end
end
