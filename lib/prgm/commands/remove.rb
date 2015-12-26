module PRGM
  module Commands
    class Remove < Clamp::Command
      parameter "NAME", "Name of item to remove"

      def execute
        PRGM::Models::Item.where(name: name).first.destroy
      end
    end
  end
end
