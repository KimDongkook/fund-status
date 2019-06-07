class CreateDonates < ActiveRecord::Migration[5.2]
  def change
    create_table :donates do |t|
      t.bigint :fundraise_id
      t.integer :amount
      t.string :donation_type
      t.datetime :donated_date

      t.timestamps
    end
    add_foreign_key :donates, :fundraises
  end
end
