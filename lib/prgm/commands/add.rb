module PRGM
  module Commands
    class Add < Clamp::Command
      parameter "NAME", "Name of item to add"
      parameter "VALUE ...", "Values to store in item", attribute_name: :values

      def execute
        PRGM::Models::Item.create(name: name, values: values.join(" "))
      end
    end
  end
end
