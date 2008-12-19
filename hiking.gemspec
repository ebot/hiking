# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hiking}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ed Botzum"]
  s.date = %q{2008-11-10}
  s.default_executable = %q{go_hiking}
  s.description = %q{A tiny xpath application written with the camping microframework.}
  s.email = %q{contact@edbotz.us}
  s.executables = ["go_hiking"]
  s.extra_rdoc_files = ["bin/go_hiking", "README"]
  s.files = ["bin/go_hiking", "Manifest", "public/hiking.rb", "Rakefile", "README", "test/test_hiking.rb", "hiking.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/ebot/hiking}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Hiking", "--main", "README"]
  s.require_paths = ["public"]
  s.rubyforge_project = %q{hiking}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A tiny xpath application written with the camping microframework.}
  s.test_files = ["test/test_hiking.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<camping>, [">= 0", "= 1.5.0"])
    else
      s.add_dependency(%q<camping>, [">= 0", "= 1.5.0"])
    end
  else
    s.add_dependency(%q<camping>, [">= 0", "= 1.5.0"])
  end
end