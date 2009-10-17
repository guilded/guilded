# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{guilded}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["C. Jason Harrelson (midas)"]
  s.date = %q{2009-10-17}
  s.description = %q{Guilded intends to provide a toolset for creating and consuming reusable web components.  Currently, this problem domain is filled with JavaScript frameworks.  These frameworks are wonderful and work very well.   However, they do not degrade gracefully and are not accessible.  Guilded seeks to provide the same level of "componentization" and ease of use without sacrificing degradability and accessibility.  Guilded will achieve these goals by applying each technology at our disposal (HTML, CSS and JavaScript) to do as it was intended.}
  s.email = %q{jason@lookforwardenterprises.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "History.txt",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "guilded.gemspec",
     "lib/guilded.rb",
     "lib/guilded/browser_detector.rb",
     "lib/guilded/component_def.rb",
     "lib/guilded/exceptions.rb",
     "lib/guilded/guilder.rb",
     "lib/guilded/rails.rb",
     "lib/guilded/rails/active_record/human_attribute_hint.rb",
     "lib/guilded/rails/active_record/human_attribute_override.rb",
     "lib/guilded/rails/helpers.rb",
     "lib/guilded/rails/inactive_record/human_attribute_hint.rb",
     "lib/guilded/rails/view_helpers.rb",
     "rails_generators/guilded_assets/guilded_assets_generator.rb",
     "rails_generators/guilded_assets/templates/guilded.js",
     "rails_generators/guilded_assets/templates/guilded.min.js",
     "rails_generators/guilded_assets/templates/jquery-1.2.6.js",
     "rails_generators/guilded_assets/templates/jquery-1.2.6.min.js",
     "rails_generators/guilded_assets/templates/jquery-1.3.2.js",
     "rails_generators/guilded_assets/templates/jquery-1.3.2.min.js",
     "rails_generators/guilded_assets/templates/jquery-url.js",
     "rails_generators/guilded_assets/templates/jquery-url.min.js",
     "rails_generators/guilded_assets/templates/mootools-1.2.3.js",
     "rails_generators/guilded_assets/templates/mootools-1.2.3.min.js",
     "rails_generators/guilded_assets/templates/reset-min.css",
     "rails_generators/guilded_config/guilded_config_generator.rb",
     "rails_generators/guilded_config/templates/load_guilded_settings.rb",
     "script/console",
     "script/destroy",
     "script/generate",
     "tasks/rails.rake",
     "tasks/rspec.rake",
     "test/guilded/browser_detector_test.rb",
     "test/guilded/component_def_test.rb",
     "test/guilded/guilder_test.rb",
     "test/guilded/rails/helpers_test.rb",
     "test/guilded/rails/view_helpers_test.rb",
     "test/guilded_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/midas/guilded}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A framework for building web based components centered around current web standards and best practices.}
  s.test_files = [
    "test/guilded/browser_detector_test.rb",
     "test/guilded/component_def_test.rb",
     "test/guilded/guilder_test.rb",
     "test/guilded/rails/helpers_test.rb",
     "test/guilded/rails/view_helpers_test.rb",
     "test/guilded_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.0.2"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.0.2"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.0.2"])
  end
end
