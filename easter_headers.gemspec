$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "easter_headers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "easter_headers"
  s.version     = EasterHeaders::VERSION
  s.authors     = ["Gilad Goldberg"]
  s.email       = ["giladgo@gmail.com"]
  s.homepage    = "http://null/"
  s.summary     = "Add fun HTTP headers to your rails app"
  s.description = "A small gem which adds harmless HTTP response headers to your app as easter eggs."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.3"

  s.add_development_dependency "sqlite3"
end
