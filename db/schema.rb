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

ActiveRecord::Schema.define(version: 20180324100728) do

  create_table "candidates", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "inquiry"
    t.index ["survey_id"], name: "index_questions_on_survey_id"
  end

  create_table "responses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "spectrum"
  end

  create_table "survey_answers", force: :cascade do |t|
    t.integer "attempt_id"
    t.integer "question_id"
    t.integer "option_id"
    t.boolean "correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "option_text"
    t.integer "option_number"
    t.integer "predefined_value_id"
  end

  create_table "survey_attempts", force: :cascade do |t|
    t.string "participant_type"
    t.integer "participant_id"
    t.integer "survey_id"
    t.boolean "winner"
    t.integer "score"
    t.index ["participant_type", "participant_id"], name: "index_survey_attempts_on_participant_type_and_participant_id"
  end

  create_table "survey_options", force: :cascade do |t|
    t.integer "question_id"
    t.integer "weight", default: 0
    t.string "text"
    t.boolean "correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "locale_text"
    t.integer "options_type_id"
    t.string "head_number"
  end

  create_table "survey_predefined_values", force: :cascade do |t|
    t.string "head_number"
    t.string "name"
    t.string "locale_name"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "survey_questions", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "section_id"
    t.string "head_number"
    t.text "description"
    t.string "locale_text"
    t.string "locale_head_number"
    t.text "locale_description"
    t.integer "questions_type_id"
    t.boolean "mandatory", default: false
  end

  create_table "survey_sections", force: :cascade do |t|
    t.string "head_number"
    t.string "name"
    t.text "description"
    t.integer "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "locale_head_number"
    t.string "locale_name"
    t.text "locale_description"
  end

  create_table "survey_surveys", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "attempts_number", default: 0
    t.boolean "finished", default: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "locale_name"
    t.text "locale_description"
  end

  create_table "surveys", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "address"
    t.boolean "employed"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
