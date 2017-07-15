class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|

    	t.references :question_set
    	t.string :actual_question
    	t.boolean :is_progress_type
    	t.integer :priority, :unique => true

      t.timestamps
    end
  end
end
