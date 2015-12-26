require "prgm/identity"
require "active_support/all"
require "active_record"
require "clamp"

PRGM::STORAGE_DIR = File.expand_path(File.dirname(__FILE__) + "/../db")
PRGM::STORAGE = PRGM::STORAGE_DIR + "/prgm.sqlite3"
ActiveRecord::Base.establish_connection adapter: "sqlite3", database: PRGM::STORAGE
require "prgm/schema"

require "prgm/models/item"

require "prgm/commands/add"
require "prgm/commands/show"
require "prgm/commands/remove"
require "prgm/commands/list"
require "prgm/commands/main"
