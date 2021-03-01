# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_01_094241) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pengajuans", force: :cascade do |t|
    t.string "nama_pegawai"
    t.string "nama_pengajuan"
    t.string "status_pengajuan"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tbl_pengajuan", id: :serial, force: :cascade do |t|
    t.text "nama_pegawai", null: false
    t.text "pengajuan", null: false
    t.integer "status_pengajuan", null: false
    t.date "create_at", null: false
  end

end
