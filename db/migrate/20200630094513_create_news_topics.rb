class CreateNewsTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :news_topics do |t|
      t.string :title
      t.text :content
      t.string :topic_flag

      t.timestamps
    end
  end
end
