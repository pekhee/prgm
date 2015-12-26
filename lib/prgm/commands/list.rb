module PRGM
  module Commands
    class List < Clamp::Command
      def execute
        PRGM::Models::Item.all.each { |i| puts i.to_s}
      end
    end
  end
end
