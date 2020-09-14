class AddNewsTopicIdToNewsTopics < ActiveRecord::Migration[5.1]
  def change
    add_column :news_topics, :news_topic_id, :integer
  end
end
