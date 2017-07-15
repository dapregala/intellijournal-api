class CreateJournalEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :journal_entries do |t|

    	t.references :journal
    	t.references :question
    	t.string :answer

      t.timestamps
    end
  end
end
