Gem::Specification.new do |s|
  s.name = 'hiking'
  s.version = '0.1.1'
  s.date = '2008-06-09'
  s.summary = 'A tiny xpath application written with the camping microframework.'
  s.description = 'A tiny xpath application written with the camping microframework.'
  s.rubyforge_project = 'hiking'
  
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.1.0'
  
  s.authors = ['Ed Botzum']
  s.email = 'blog@edbotz.us'
  s.homepage = 'http://github.com/ebot/hiking'
  
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