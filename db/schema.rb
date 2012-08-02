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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120802234146) do

  create_table "books", :force => true do |t|
    t.integer  "category"
    t.string   "title"
    t.string   "author"
    t.string   "picture"
    t.text     "description"
    t.integer  "year"
    t.string   "vendor"
    t.string   "publisher"
    t.integer  "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "link"
  end

  create_table "booksalecategories", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "parentcategoryid"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "booksales", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "price"
    t.string   "publisher"
    t.string   "year"
    t.string   "vendor"
    t.string   "picture"
    t.string   "category"
    t.string   "author"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "businessbooks", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "price"
    t.string   "publisher"
    t.string   "year"
    t.string   "vendor"
    t.string   "picture"
    t.string   "category"
    t.string   "author"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "businesscategories", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "parentcategoryid"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "categoryid"
    t.integer  "parentcategoryid"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "theme"
  end

  create_table "educationliteraturecategories", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "parentcategoryid"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "educationliteratures", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "price"
    t.string   "publisher"
    t.string   "year"
    t.string   "vendor"
    t.string   "picture"
    t.string   "category"
    t.string   "author"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "kidandparentbooks", :force => true do |t|
    t.string   "title"
    t.integer  "price"
    t.string   "link"
    t.text     "description"
    t.string   "picture"
    t.string   "vendor"
    t.string   "category"
    t.string   "author"
    t.string   "publisher"
    t.string   "year"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "kidandparentcategories", :force => true do |t|
    t.string   "name"
    t.string   "categoryid"
    t.string   "parentcategoryid"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "nonfictionliteraturecategories", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "parentcategoryid"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "nonfictionliteratures", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.string   "price"
    t.string   "publisher"
    t.string   "year"
    t.string   "vendor"
    t.string   "picture"
    t.string   "category"
    t.string   "author"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
