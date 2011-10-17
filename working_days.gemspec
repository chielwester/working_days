# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "working_days/version"

Gem::Specification.new do |s|
  s.name        = "working_days"
  s.version     = WorkingDays::VERSION
  s.authors     = ["Chiel Wester"]
  s.email       = ["chiel.wester@holder.nl"]
  s.homepage    = ""
  s.summary     = "Working days time extension"
  s.description = "Add a number of working days to a Time object"

  s.rubyforge_project = "working_days"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
