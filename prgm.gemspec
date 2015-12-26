$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "prgm/identity"

Gem::Specification.new do |spec|
  spec.name = PRGM::Identity.name
  spec.version = PRGM::Identity.version
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["Pooyan Khosravi"]
  spec.email = ["pekhee@gmail.com"]
  spec.homepage = "https://github.com/pekhee/prgm"
  spec.summary = "Sample gem for persistent clis"
  spec.description =
    "An example of embedding ActiveRecord (and migrations) in a cli app"
  spec.license = "MIT"

  spec.add_dependency "clamp"
  spec.add_dependency "sqlite3"
  spec.add_dependency "activerecord", "~> 4.0"
  spec.add_dependency "activesupport", "~> 4.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "gemsmith"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-state"
  spec.add_development_dependency "pry-rescue"
  spec.add_development_dependency "pry-stack_explorer"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rb-fsevent" # Guard file events for OSX.
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "terminal-notifier"
  spec.add_development_dependency "terminal-notifier-guard"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "codeclimate-test-reporter"

  spec.files = Dir["lib/**/*", "vendor/**/*"]
  spec.executables = ["prgm"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.require_paths = ["lib"]
end
