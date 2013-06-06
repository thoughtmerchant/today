class CreateRating < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :name, null: false
      t.integer :score, null: false
      t.timestamps
    end
  end
end
