class AddIndex < ActiveRecord::Migration[5.2]
  def change
    add_index :users, [:id,:user_name]
    add_index :fundraises, [:id, :user_id]
    add_index :donates, [:fundraise_id, :donated_date]
    add_index :direct_donates, :donate_id
    add_index :join_donates, :donate_id
  end
end
