class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :age
      t.date :birthday

      t.timestamps
    end
  end
end
