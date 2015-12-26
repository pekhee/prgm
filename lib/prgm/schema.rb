unless File.exist? PRGM::STORAGE_DIR + "/is_migrated"
  ActiveRecord::Schema.define do
    create_table :items do |table|
      table.string :name
      table.text :values

      table.timestamps
    end
  end

  File.write PRGM::STORAGE_DIR + "/is_migrated", ""
end
