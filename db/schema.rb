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

ActiveRecord::Schema.define(version: 2019_09_26_021406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "despesas", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "valor"
  end

  create_table "fornecedores", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "email"
    t.string "site"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedido_produtos", force: :cascade do |t|
    t.bigint "pedido_id"
    t.bigint "produto_id"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_pedido_produtos_on_pedido_id"
    t.index ["produto_id"], name: "index_pedido_produtos_on_produto_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.bigint "cliente_id"
    t.float "valor_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_pedidos_on_cliente_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.integer "quantidade"
    t.datetime "vencimento"
    t.float "preco_compra"
    t.float "preco_venda"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receitas", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "valor"
  end

  add_foreign_key "pedido_produtos", "pedidos"
  add_foreign_key "pedido_produtos", "produtos"
  add_foreign_key "pedidos", "clientes"
end
