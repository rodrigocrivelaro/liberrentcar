# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_21_201008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "automovels", force: :cascade do |t|
    t.string "modelo"
    t.string "cor"
    t.integer "tipo_auto"
    t.string "placa"
    t.decimal "custo_diario", precision: 8, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "habilitacaos", force: :cascade do |t|
    t.bigint "pessoa_id", null: false
    t.decimal "numero"
    t.string "modalidade"
    t.date "validade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pessoa_id"], name: "index_habilitacaos_on_pessoa_id"
  end

  create_table "locacaos", force: :cascade do |t|
    t.bigint "pessoa_id", null: false
    t.bigint "automovel_id", null: false
    t.decimal "valor", precision: 8, scale: 2
    t.datetime "dt_inicio"
    t.datetime "dt_termino"
    t.datetime "dt_retirada"
    t.datetime "dt_entrega"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["automovel_id"], name: "index_locacaos_on_automovel_id"
    t.index ["pessoa_id"], name: "index_locacaos_on_pessoa_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.string "documento"
    t.date "dt_nascimento"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "telefones", force: :cascade do |t|
    t.bigint "pessoa_id", null: false
    t.string "ddd"
    t.string "numero"
    t.integer "tipo_telefone"
    t.boolean "preferencial"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pessoa_id"], name: "index_telefones_on_pessoa_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "habilitacaos", "pessoas"
  add_foreign_key "locacaos", "automovels"
  add_foreign_key "locacaos", "pessoas"
  add_foreign_key "telefones", "pessoas"
end
