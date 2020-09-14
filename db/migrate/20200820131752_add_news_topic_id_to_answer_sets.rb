class AddNewsTopicIdToAnswerSets < ActiveRecord::Migration[5.1]
  def change
    add_column :answer_sets, :news_topic_id, :integer
  end
end
