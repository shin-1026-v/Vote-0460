class RemovenewsTopicIdFromanswerSets < ActiveRecord::Migration[5.1]
  def change
    remove_column :answer_sets, :news_topic_id, :string
  end
end
