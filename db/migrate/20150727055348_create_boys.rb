class CreateBoys < ActiveRecord::Migration
  def change
    create_table :boys do |t|
      t.string :name
      t.string :description
      t.string :pros
      t.string :cons
      t.integer :level_of_adequacy

      t.timestamps null: false
    end
  end
end
