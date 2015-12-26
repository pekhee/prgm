module PRGM
  module Commands
    class Add < Clamp::Command
      parameter "NAME", "Name of item to add"
      parameter "VALUE ...", "Values to store in item", attribute_name: :values

      def execute
        puts "Name: #{name}"
        puts "Values: #{values.join(" ")}"
      end
    end
  end
end
