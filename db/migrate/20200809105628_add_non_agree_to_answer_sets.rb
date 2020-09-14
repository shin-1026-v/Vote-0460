class AddNonAgreeToAnswerSets < ActiveRecord::Migration[5.1]
  def change
    add_column :answer_sets, :non_agree, :integer
  end
end
