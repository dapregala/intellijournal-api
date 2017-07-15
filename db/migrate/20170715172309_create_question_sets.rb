class CreateQuestionSets < ActiveRecord::Migration[5.1]
  def change
    create_table :question_sets do |t|

    	t.bigint :journal_id, :index => true

      t.timestamps
    end
  end
end
