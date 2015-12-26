module PRGM
  module Commands
    class Remove < Clamp::Command
      parameter "NAME", "Name of item to remove"

      def execute
        puts "Name: #{name}"
        puts "Values: smt"
      end
    end
  end
end
