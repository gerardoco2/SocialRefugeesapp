class CreateRefugees < ActiveRecord::Migration
  def change
    create_table :refugees do |t|
      t.string :name
      t.integer :age
      t.string :eye_color
      t.string :name_of_mother

      t.timestamps null: false
    end
  end
end
