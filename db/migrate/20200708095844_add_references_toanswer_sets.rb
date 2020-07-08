class AddReferencesToanswerSets < ActiveRecord::Migration[5.1]
  def change
    add_reference :answer_sets, :user,　null: false,　foreign_key: true
  end
end
