Gem::Specification.new do |s|
   s.name = %q{hiking}
   s.version = "0.1.0"
   s.date = %q{2008-06-09}
   s.authors = ["Ed Botzum"]
   s.email = %q{blog@chocolatay.com.com}
   s.summary = %q{A tiny xpath application written with the camping microframework.}
   s.homepage = %q{http://edbotz.us}
   s.description = %q{A tiny xpath application written with the camping microframework.}
   s.files = ["public/hiking.rb"]
   s.executables = ["go_hiking"]
   s.default_executable = "go_hiking"
   s.require_paths << "bin" 
   s.add_dependency('camping', '>= 1.5.0')
   s.has_rdoc = true
   s.extra_rdoc_files = ['README']
   s.rdoc_options << '--main' << 'README'
end