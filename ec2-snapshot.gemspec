# -*- encoding: utf-8 -*-
require File.expand_path("../lib/ec2_snapshot/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "ec2-snapshot"
  gem.authors       = ["mattijsvandruenen"]
  gem.email         = ["m.vandruenen@voormedia.com"]
  gem.description   = %q{EC2 EBS Volume Snapshotting}
  gem.summary       = %q{Provides a library that can easily be integrated into Chef for automatic snapshotting of EBS volumes.}
  gem.homepage      = "http://voormedia.com"

  gem.add_runtime_dependency "right_aws"
  gem.add_development_dependency "minitest", "~> 2.8.0"
  gem.add_development_dependency "mocha"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ["lib"]
  gem.version       = Ec2Snapshot::VERSION
end
