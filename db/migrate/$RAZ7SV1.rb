class AddForeignColumnFundraises < ActiveRecord::Migration[5.2]
  def change
    add_column :fundraises, :user_id, :integer
    add_foreign_key :fundraises, :users
  end
end
