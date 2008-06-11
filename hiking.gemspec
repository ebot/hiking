Gem::Specification.new do |s|
  s.name = %q{hiking}
  s.version = '0.1.1'
  s.date = %q{2008-06-09}
  s.summary = %q{A tiny xpath application written with the camping microframework.}
  s.description = %q{A tiny xpath application written with the camping microframework.}
  s.rubyforge_project = "hiking"
  
  s.authors = ['Ed Botzum']
  s.email = %q{blog@edbotz.us}
  s.homepage = %q{http://github.com/ebot/hiking}
  
  s.files = ['public/hiking.rb']
  s.test_files = ['test/test_hiking.rb']
  s.executables = ['go_hiking']
  s.default_executable = 'go_hiking'
  s.require_paths = ['public', 'test']
  
  s.add_dependency('camping', '>= 1.5.0')
  s.has_rdoc = true
  s.extra_rdoc_files = ['README']
  s.rdoc_options << '--main' << 'README'
end