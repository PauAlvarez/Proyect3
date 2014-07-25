# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140720053203) do

  create_table "books", force: true do |t|
    t.string   "isbn10"
    t.string   "isbn13"
    t.string   "titulo"
    t.string   "autor"
    t.string   "editorial"
    t.string   "categoria"
    t.integer  "cantidad"
    t.float    "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "nombreClient"
    t.string   "direccioncliente"
    t.string   "telefonoClient"
    t.string   "email"
    t.string   "facebook"
    t.string   "linkenId"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fees", force: true do |t|
    t.integer  "user_id"
    t.integer  "cantidadDinero"
    t.date     "tiempo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_details", force: true do |t|
    t.integer  "book_id"
    t.integer  "order_id"
    t.integer  "cantidad"
    t.float    "descuento"
    t.float    "preciouni"
    t.float    "cantidadtotal"
    t.float    "importe"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "numeropedido"
    t.date     "fechapedido"
    t.date     "fechaprogramada"
    t.date     "fechaentregada"
    t.integer  "estatus"
    t.integer  "user_id"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promotions", force: true do |t|
    t.string   "medioComunicacion"
    t.string   "descripcionPromo"
    t.string   "acuerdo"
    t.integer  "client_id"
    t.integer  "user_id"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "providers", force: true do |t|
    t.string   "nombreEmpresa"
    t.string   "telefonoEmpresa"
    t.string   "direccionEmpresa"
    t.string   "nombreContacto"
    t.string   "correoElectronico"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sale_details", force: true do |t|
    t.integer  "sale_id"
    t.integer  "book_id"
    t.float    "preciouni"
    t.integer  "cantidad"
    t.float    "importe"
    t.float    "descuento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.integer  "client_id"
    t.date     "fecha"
    t.float    "importe"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
