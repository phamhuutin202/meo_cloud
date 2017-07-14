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

ActiveRecord::Schema.define(version: 20170714101414) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_doctors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true
  end

  create_table "exams", force: :cascade do |t|
    t.string   "status"
    t.string   "location"
    t.integer  "patient_id"
    t.integer  "technician_id"
    t.integer  "doctor_id"
    t.integer  "eye_prescription_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["doctor_id"], name: "index_exams_on_doctor_id"
    t.index ["eye_prescription_id"], name: "index_exams_on_eye_prescription_id"
    t.index ["patient_id"], name: "index_exams_on_patient_id"
    t.index ["technician_id"], name: "index_exams_on_technician_id"
  end

  create_table "eye_prescriptions", force: :cascade do |t|
    t.integer  "vision_score"
    t.string   "dblur"
    t.string   "dblureye"
    t.string   "nblur"
    t.string   "nblureye"
    t.string   "rscvad"
    t.string   "lscvad"
    t.float    "odars"
    t.float    "odarc"
    t.float    "odara"
    t.float    "osars"
    t.float    "osarc"
    t.float    "osara"
    t.float    "odrecdrx"
    t.float    "osrecdrx"
    t.float    "oddrxdisp"
    t.float    "osdrxdisp"
    t.string   "dframe"
    t.float    "odnrxdisp"
    t.float    "osnrxdisp"
    t.float    "odrecnrx"
    t.float    "osrecnrx"
    t.string   "nframe"
    t.string   "dframe2"
    t.string   "nframe2"
    t.float    "otcpower"
    t.float    "otcbifocal"
    t.float    "otcreader"
    t.float    "otcreaderpowerdisp1"
    t.float    "otcreaderpowerdisp2"
    t.string   "otcreaderframedisp1"
    t.string   "otcreaderframedisp2"
    t.float    "otcbifocalpowerdisp1"
    t.float    "otcbifocalpowerdisp2"
    t.string   "otcbifocalframedisp1"
    t.string   "otcbifocalframedisp2"
    t.string   "sunweardisp1"
    t.string   "sunweardisp2"
    t.float    "odds"
    t.float    "oddc"
    t.float    "odda"
    t.float    "osds"
    t.float    "osdc"
    t.float    "osda"
    t.float    "oddse"
    t.float    "osdse"
    t.float    "oddse_rf"
    t.float    "osdse_rf"
    t.float    "ouadd"
    t.float    "odnse"
    t.float    "osnse"
    t.float    "odavdrx"
    t.float    "osavdrx"
    t.float    "odavnrx"
    t.float    "osavnrx"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.date     "birthday"
    t.string   "address"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technicians", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_technicians_on_email", unique: true
    t.index ["reset_password_token"], name: "index_technicians_on_reset_password_token", unique: true
  end

end
