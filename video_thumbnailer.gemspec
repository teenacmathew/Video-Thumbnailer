lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'video_thumbnailer/version'

Gem::Specification.new do |spec|
  spec.name          = "video_thumbnailer"
  spec.version       = VideoThumbnailer::VERSION
  spec.authors       = ["shamith, radhika, teena"]
  spec.email         = ["teena@qburst.com"]
  spec.summary       = "Generates a thumbnail for the input video."
  spec.description   = "Upload video in your Ruby applications and generate a thumbnail according to the valid optios provided."
  spec.files         = `git ls-files`.split("\n") 
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "carrierwave-video"
  spec.add_development_dependency "rspec"," ~> 2.4"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end