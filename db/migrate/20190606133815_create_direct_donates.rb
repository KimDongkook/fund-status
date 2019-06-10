class CreateDirectDonates < ActiveRecord::Migration[5.2]
  def change
    create_table :direct_donates do |t|
      t.bigint :fundraise_id
      t.bigint :donate_id
      t.integer :amount

      t.timestamps
    end
    add_foreign_key :direct_donates, :fundraises
    add_foreign_key :direct_donates, :donates
  end
end
