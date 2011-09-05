# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "zazzle/version"

Gem::Specification.new do |s|
  s.name        = "zazzle"
  s.version     = Zazzle::VERSION
  s.authors     = ["Nicolas Santa"]
  s.email       = ["nicolas55ar@gmail.com"]
  s.homepage    = "http://github.com/nsanta/zazzle"
  s.summary     = %q{Zazzle.com API wrapper}
  s.description = %q{Zazzle.com API wrapper}

  s.rubyforge_project = "zazzle"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end

