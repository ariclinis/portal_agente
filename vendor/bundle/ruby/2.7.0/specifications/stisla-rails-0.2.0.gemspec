# -*- encoding: utf-8 -*-
# stub: stisla-rails 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "stisla-rails".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Cahyadi Triyansyah".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-04-14"
  s.description = "Stisla is Free Bootstrap Admin Template and will help you to speed up your project, design your own dashboard UI and the users will love it.".freeze
  s.email = ["sundi3yansyah@gmail.com".freeze]
  s.homepage = "https://github.com/SunDi3yansyah/stisla-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Integrates the Stisla theme with the Rails assets pipeline".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 12.3"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.11"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.3"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.11"])
  end
end
