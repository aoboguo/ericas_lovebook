class CreateBoyEricaJoinTable < ActiveRecord::Migration
  def change
    create_join_table :boys, :ericas do |t|
      # t.index [:boy_id, :erica_id]
      # t.index [:erica_id, :boy_id]
    end
  end
end
