# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_06_133848) do

  create_table "articles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "direct_donates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "fundraise_id"
    t.bigint "donate_id"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["donate_id"], name: "fk_rails_2272cbf373"
    t.index ["fundraise_id"], name: "fk_rails_862b08c123"
  end

  create_table "donates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "fundraise_id"
    t.integer "amount"
    t.string "donation_type"
    t.datetime "donated_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fundraise_id"], name: "fk_rails_5bc9bd7bf7"
  end

  create_table "fundraises", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "fundraising_name"
    t.integer "target_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "fk_rails_34be83c4aa"
  end

  create_table "join_donates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "fundraise_id"
    t.bigint "donate_id"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["donate_id"], name: "fk_rails_291c16b575"
    t.index ["fundraise_id"], name: "fk_rails_a003482afb"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "direct_donates", "donates"
  add_foreign_key "direct_donates", "fundraises"
  add_foreign_key "donates", "fundraises"
  add_foreign_key "fundraises", "users"
  add_foreign_key "join_donates", "donates"
  add_foreign_key "join_donates", "fundraises"
end
