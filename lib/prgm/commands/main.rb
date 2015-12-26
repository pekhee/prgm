module PRGM
  module Commands
    class Main < Clamp::Command
      subcommand "add", "Add item", Add
      subcommand "rm", "Remove item", Remove
      subcommand "ls", "List items", List
    end
  end
end
