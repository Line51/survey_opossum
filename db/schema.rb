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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150611172037) do
=======
ActiveRecord::Schema.define(version: 20150611174048) do
>>>>>>> c4b7b1eb74faf2908bb0a11a18dcbf17dcd919f7

  create_table "authors", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "survey_id"
    t.string   "text"
<<<<<<< HEAD
    t.string   "answer"
=======
>>>>>>> c4b7b1eb74faf2908bb0a11a18dcbf17dcd919f7
    t.boolean  "required"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "surveys", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "string"
=======
  create_table "responses", force: :cascade do |t|
    t.integer  "form_id"
    t.string   "answer"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
>>>>>>> c4b7b1eb74faf2908bb0a11a18dcbf17dcd919f7
    t.integer  "author_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
