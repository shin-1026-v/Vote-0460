class AddAgreeToAnswerSets < ActiveRecord::Migration[5.1]
  def change
    add_column :answer_sets, :agree, :integer
  end
end
