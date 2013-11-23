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

ActiveRecord::Schema.define(version: 20131122144149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "date_lookups", force: true do |t|
    t.datetime "history"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destinations", force: true do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "station_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "destinations", ["station_id"], name: "index_destinations_on_station_id", using: :btree

  create_table "origins", force: true do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "station_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "origins", ["station_id"], name: "index_origins_on_station_id", using: :btree

  create_table "station_116", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_119", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_120", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_127", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_128", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_137", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_143", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_144", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_146", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_147", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_150", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_151", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_152", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_153", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_157", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_160", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_161", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_164", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_167", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_168", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_173", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_174", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_195", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2000", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2001", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2002", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2003", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2004", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2005", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2006", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2008", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2009", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2010", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2012", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2017", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2021", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2022", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_2023", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_212", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_216", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_217", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_218", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_223", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_224", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_225", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_228", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_229", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_232", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_233", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_236", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_237", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_238", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_239", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_241", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_242", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_243", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_244", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_245", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_247", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_248", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_249", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_250", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_251", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_252", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_253", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_254", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_257", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_258", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_259", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_260", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_261", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_262", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_263", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_264", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_265", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_266", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_267", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_268", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_270", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_271", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_274", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_275", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_276", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_278", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_279", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_280", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_281", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_282", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_284", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_285", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_289", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_290", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_291", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_293", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_294", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_295", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_296", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_297", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_298", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_300", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_3002", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_301", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_302", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_303", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_304", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_305", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_306", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_307", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_308", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_309", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_310", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_311", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_312", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_313", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_314", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_315", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_316", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_317", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_318", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_319", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_320", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_321", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_322", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_323", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_324", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_325", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_326", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_327", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_328", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_329", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_330", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_331", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_332", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_334", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_335", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_336", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_337", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_339", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_340", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_341", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_342", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_343", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_344", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_345", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_346", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_347", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_348", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_349", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_350", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_351", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_352", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_353", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_354", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_355", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_356", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_357", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_358", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_359", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_360", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_361", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_362", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_363", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_364", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_365", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_366", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_367", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_368", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_369", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_372", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_373", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_375", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_376", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_377", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_379", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_380", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_382", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_383", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_384", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_385", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_386", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_387", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_388", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_389", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_390", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_391", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_392", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_393", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_394", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_395", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_396", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_397", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_398", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_399", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_400", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_401", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_402", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_403", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_404", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_405", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_406", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_407", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_408", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_409", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_410", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_411", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_412", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_414", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_415", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_416", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_417", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_418", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_419", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_420", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_421", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_422", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_423", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_426", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_427", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_428", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_430", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_431", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_432", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_433", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_434", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_435", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_436", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_437", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_438", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_439", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_440", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_441", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_442", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_443", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_444", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_445", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_446", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_447", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_448", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_449", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_450", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_453", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_454", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_455", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_456", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_457", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_458", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_459", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_460", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_461", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_462", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_463", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_464", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_465", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_466", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_467", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_468", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_469", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_470", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_471", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_472", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_473", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_474", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_475", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_476", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_477", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_478", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_479", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_480", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_481", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_482", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_483", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_484", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_485", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_486", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_487", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_488", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_489", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_490", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_491", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_492", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_493", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_494", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_495", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_496", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_497", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_498", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_499", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_500", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_501", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_502", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_503", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_504", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_505", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_507", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_508", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_509", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_510", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_511", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_512", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_513", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_514", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_515", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_516", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_517", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_518", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_519", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_520", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_521", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_522", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_523", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_524", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_525", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_526", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_527", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_528", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_529", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_531", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_532", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_533", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_534", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_536", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_537", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_538", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_539", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_540", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_545", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_546", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_72", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_79", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_82", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "station_83", force: true do |t|
    t.integer  "bikes"
    t.integer  "free"
    t.datetime "station_time"
  end

  create_table "stations", force: true do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "station_id"
  end

  create_table "trips", force: true do |t|
    t.integer  "origin_id"
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trips", ["destination_id"], name: "index_trips_on_destination_id", using: :btree
  add_index "trips", ["origin_id"], name: "index_trips_on_origin_id", using: :btree

end
