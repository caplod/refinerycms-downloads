# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "refinerycms-downloads/version"

Gem::Specification.new do |s|
  s.name        = "refinerycms-downloads"
  s.version     = Refinerycms::Downloads::VERSION
  s.authors     = ['Stefan Mielke']
  s.email       = ['stefan@tan3.de']
  s.homepage    = "http://tan3.de"
  s.summary     = %q{Private Downloads engine for Refinery CMS}
  s.description = %q{Ruby on Rails Downloads engine for Refinery CMS.}

  s.rubyforge_project = "refinerycms-downloads"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
