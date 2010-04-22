# -*- encoding: utf-8 -*- 
Gem::Specification.new do |s|
  s.name        = "hiking"
  s.version     = "0.1.0"

  s.author      = "Ed Botzum"
  s.email       = "contact@edbotz.us"

  s.summary     = "A tiny xpath application written with the camping microframework."
  s.description = "A tiny xpath application written with the camping microframework that is used to test out xpath statements."
  s.homepage    = "http://ebot.github.com/hiking"
 
  s.add_dependency 'camping', '= 1.5.0'
  
  s.files       = %w(README bin/go_hiking  public/hiking.rb test/test_hiking.rb)
  s.executables = ["go_hiking"]
  s.require_paths = ["public"]
end