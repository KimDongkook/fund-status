class CreateFundraises < ActiveRecord::Migration[5.2]
  def change
    create_table :fundraises do |t|
      t.string :fundraising_name
      t.integer :target_amount
      t.timestamps
      t.integer :user_id
    end
  end
end
