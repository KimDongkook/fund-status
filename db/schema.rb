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

ActiveRecord::Schema.define(version: 2019_06_09_123121) do

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
    t.index ["donate_id"], name: "index_direct_donates_on_donate_id"
    t.index ["fundraise_id", "donate_id"], name: "IDX_FOREIGNKEY_DIRECTDONATE"
    t.index ["id", "donate_id"], name: "IDX_FOREIGNKEY_DIRECTDONATE2"
  end

  create_table "donates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "fundraise_id"
    t.integer "amount"
    t.string "donation_type"
    t.datetime "donated_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fundraise_id", "donated_date"], name: "IDX_DONATED_DATE"
    t.index ["fundraise_id", "donated_date"], name: "index_donates_on_fundraise_id_and_donated_date"
    t.index ["fundraise_id"], name: "IDX_FOREIGNKEY_DONATE"
    t.index ["id", "fundraise_id"], name: "IDX_FOREIGNKEY_DONATE2"
  end

  create_table "fundraises", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "fundraising_name"
    t.integer "target_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["id", "user_id"], name: "IDX_FOREIGNKEY_FUNDRAISE2"
    t.index ["id", "user_id"], name: "index_fundraises_on_id_and_user_id"
    t.index ["user_id"], name: "IDX_FOREIGNKEY_FUNDRAISE"
  end

  create_table "join_donates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "fundraise_id"
    t.bigint "donate_id"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["donate_id"], name: "index_join_donates_on_donate_id"
    t.index ["fundraise_id", "donate_id"], name: "IDX_FOREIGNKEY_JOINDONATE"
    t.index ["id", "donate_id"], name: "IDX_FOREIGNKEY_JOINDONATE2"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id", "user_name"], name: "IDX_USER_NAME"
    t.index ["id", "user_name"], name: "index_users_on_id_and_user_name"
  end

  add_foreign_key "direct_donates", "donates"
  add_foreign_key "direct_donates", "fundraises"
  add_foreign_key "donates", "fundraises"
  add_foreign_key "fundraises", "users"
  add_foreign_key "join_donates", "donates"
  add_foreign_key "join_donates", "fundraises"
end
