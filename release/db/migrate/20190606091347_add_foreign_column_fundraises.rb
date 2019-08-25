class AddForeignColumnFundraises < ActiveRecord::Migration[5.2]
  def change
    change_column :fundraises, :user_id, :bigint
    add_foreign_key :fundraises, :users
  end
end
