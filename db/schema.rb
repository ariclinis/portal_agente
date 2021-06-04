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

ActiveRecord::Schema.define(version: 2021_06_03_202055) do

  create_table "armadors", force: :cascade do |t|
    t.string "nome"
    t.string "tel"
    t.string "agente"
    t.string "pais"
    t.text "morada"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "delegations", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.string "tel"
    t.string "email"
    t.string "cp"
    t.string "provincia"
    t.string "municipio"
    t.string "comuna"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "desembarkations", force: :cascade do |t|
    t.integer "embarkation_id", null: false
    t.integer "n_movimento"
    t.string "porto_origem"
    t.string "porto_destino"
    t.integer "armador_id", null: false
    t.integer "user_id"
    t.string "tel"
    t.string "email"
    t.string "data_entrada"
    t.string "hora_entrada"
    t.string "data_saida"
    t.string "hora_saida"
    t.string "nome_comandante"
    t.string "estadia_prev"
    t.string "estadia_final"
    t.string "nacionalida"
    t.string "tipo_doc"
    t.string "n_doc"
    t.string "data_emissao"
    t.string "data_validade"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "dias_que_fica"
    t.index ["armador_id"], name: "index_desembarkations_on_armador_id"
    t.index ["embarkation_id"], name: "index_desembarkations_on_embarkation_id"
    t.index ["user_id"], name: "index_desembarkations_on_user_id"
  end

  create_table "embarkations", force: :cascade do |t|
    t.string "nome"
    t.string "matricula"
    t.string "local_atracagem"
    t.string "indicativo_chamada"
    t.string "nr_imo"
    t.string "data_contrucao"
    t.string "estaleiro"
    t.string "porto_registro"
    t.string "bandeira_origem"
    t.string "bandeira_actual"
    t.integer "tipo_embarcacao_id"
    t.integer "tipo_de_casco_id"
    t.integer "tipo_classificacao_id"
    t.integer "stado_da_embarcacao"
    t.float "comprimento"
    t.float "boca"
    t.float "pontal"
    t.string "tonelagem_bruto"
    t.string "tonelagem_liquida"
    t.float "lotacao"
    t.float "nr_max_tripulante"
    t.float "nr_min_tripulante"
    t.integer "capitao_id"
    t.integer "armador_id", null: false
    t.integer "proprietario_id"
    t.integer "delegation_id", null: false
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["armador_id"], name: "index_embarkations_on_armador_id"
    t.index ["delegation_id"], name: "index_embarkations_on_delegation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "bi"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "desembarkations", "armadors"
  add_foreign_key "desembarkations", "embarkations"
  add_foreign_key "embarkations", "armadors"
  add_foreign_key "embarkations", "delegations"
end
