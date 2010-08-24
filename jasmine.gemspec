# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jasmine}
  s.version = "0.12.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rajan Agaskar", "Christian Williams"]
  s.date = %q{2010-07-28}
  s.default_executable = %q{jasmine}
  s.description = %q{Javascript BDD test framework}
  s.email = %q{ragaskar@gmail.com}
  s.executables = ["jasmine"]
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "generators/jasmine/jasmine_generator.rb",
     "generators/jasmine/templates/INSTALL",
     "lib/jasmine.rb",
     "lib/jasmine/base.rb",
     "lib/jasmine/command_line_tool.rb",
     "lib/jasmine/config.rb",
     "lib/jasmine/run.html.erb",
     "lib/jasmine/selenium_driver.rb",
     "lib/jasmine/server.rb",
     "lib/jasmine/spec_builder.rb",
     "lib/jasmine/tasks/jasmine.rake",
     "bin/jasmine"
  ]
  s.homepage = %q{http://github.com/pivotal/jasmine-ruby}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Jasmine Ruby Runner}
  s.test_files = [
    "spec/config_spec.rb",
     "spec/jasmine_command_line_tool_spec.rb",
     "spec/jasmine_self_test_config.rb",
     "spec/jasmine_self_test_spec.rb",
     "spec/rails_generator_spec.rb",
     "spec/server_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, [">= 0.8.7"])
      s.add_runtime_dependency(%q<rspec>, [">= 1.1.5"])
      s.add_runtime_dependency(%q<rack>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<selenium-rc>, [">= 2.1.0"])
      s.add_runtime_dependency(%q<selenium-client>, [">= 1.2.17"])
      s.add_runtime_dependency(%q<json_pure>, [">= 1.4.3"])
    else
      s.add_dependency(%q<rake>, [">= 0.8.7"])
      s.add_dependency(%q<rspec>, [">= 1.1.5"])
      s.add_dependency(%q<rack>, [">= 1.0.0"])
      s.add_dependency(%q<selenium-rc>, [">= 2.1.0"])
      s.add_dependency(%q<selenium-client>, [">= 1.2.17"])
      s.add_dependency(%q<json_pure>, [">= 1.4.3"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0.8.7"])
    s.add_dependency(%q<rspec>, [">= 1.1.5"])
    s.add_dependency(%q<rack>, [">= 1.0.0"])
    s.add_dependency(%q<selenium-rc>, [">= 2.1.0"])
    s.add_dependency(%q<selenium-client>, [">= 1.2.17"])
    s.add_dependency(%q<json_pure>, [">= 1.4.3"])
  end
end

