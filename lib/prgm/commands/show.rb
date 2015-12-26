module PRGM
  module Commands
    class Show < Clamp::Command
      parameter "NAME", "Name of item to show"

      def execute
        puts PRGM::Models::Item.where(name: name).first.to_s
      end
    end
  end
end
