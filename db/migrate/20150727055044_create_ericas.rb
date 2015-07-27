class CreateEricas < ActiveRecord::Migration
  def change
    create_table :ericas do |t|
      t.string :name
      t.string :description
      t.integer :sexiness
      t.string :objective

      t.timestamps null: false
    end
  end
end
