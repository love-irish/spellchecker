$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spellchecker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spellchecker"
  s.version     = Spellchecker::VERSION
  s.authors     = ["Myk Klemme"]
  s.email       = ["mykklemme@gmail.com"]
  s.homepage    = "https://github.com/love-irish/spellchecker"
  s.summary     = "A ruby spellchecker that works for Irish"
  s.description = "A ruby spellchecker that works for Irish"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "nokogiri", "~> 1.8"
  s.add_dependency "rails", "~> 5.1"
  s.add_dependency "rdoc", "~> 6.0"

  s.add_development_dependency "sqlite3", "~> 1.3"
  s.add_development_dependency "pry", "~> 0.11"
  
end
