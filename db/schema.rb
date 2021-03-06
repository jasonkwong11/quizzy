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

ActiveRecord::Schema.define(version: 20160727183603) do

  create_table "questions", force: :cascade do |t|
    t.string  "text"
    t.string  "answer"
    t.boolean "correct"
    t.integer "quiz_id"
    t.string  "choice1"
    t.string  "choice2"
    t.string  "choice3"
    t.string  "choice4"
    t.string  "choice5"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string  "name"
    t.date    "date"
    t.decimal "average"
    t.decimal "score"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "email"
    t.string  "password_digest"
    t.decimal "average_grade"
  end

end
