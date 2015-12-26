module PRGM
  module Models
    class Item < ActiveRecord::Base

      def to_s
        <<-NAME.gsub(/ {10}/, "")
          Name: #{name}
          Values: #{values}
        NAME
      end
    end
  end
end
