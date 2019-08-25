class CreateJoinDonates < ActiveRecord::Migration[5.2]
  def change
    create_table :join_donates do |t|
      t.bigint :fundraise_id
      t.bigint :donate_id
      t.integer :amount

      t.timestamps
    end
    add_foreign_key :join_donates, :fundraises
    add_foreign_key :join_donates, :donates
  end
end
