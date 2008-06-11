Gem::Specification.new do |s|
  s.name = 'hiking'
  s.version = '0.1.1'
  s.date = '2008-06-09'
  s.summary = 'A tiny xpath application written with the camping microframework.'
  s.description = 'A tiny xpath application written with the camping microframework.'
  s.rubyforge_project = 'hiking'
  
  s.authors = ['Ed Botzum']
  s.email = 'blog@edbotz.us'
  s.homepage = 'http://github.com/ebot/hiking'
  
  s.files = ['public/hiking.rb']
  s.test_files = ['test/test_hiking.rb']
  s.executables = ['go_hiking']
  s.default_executable = 'go_hiking'
  s.require_paths = ['public', 'test']
  
  s.has_rdoc = true
  s.extra_rdoc_files = ['README']
  s.rdoc_options = ['--main', 'README']
  
  s.rubygems_version = %q{1.1.1}
  
  s.add_dependency('camping', ['>= 1.5.0'])
end