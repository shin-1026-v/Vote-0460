class CreateAnswerSets < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_sets do |t|
      t.string :answer
      t.string :news_topic_id

      t.timestamps
    end
  end
end
