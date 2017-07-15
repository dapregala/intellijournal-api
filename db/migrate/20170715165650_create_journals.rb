class CreateJournals < ActiveRecord::Migration[5.1]
  def change
    create_table :journals do |t|

    	t.references :user, :index => true
      t.timestamps
    end
  end
end
