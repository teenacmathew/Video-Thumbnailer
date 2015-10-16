lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'video_thumbnailer/version'

Gem::Specification.new do |spec|
  spec.name          = "video_thumbnailer"
  spec.version       = VideoThumbnailer::VERSION
  spec.authors       = ["teena, radhika"]
  spec.email         = ["teena@qburst.com"]
  spec.summary       = ""
  spec.description   = ""
  spec.files         = `git ls-files`.split("\n") # ["lib/video_thumbnailer/version.rb", "lib/video_thumbnailer/logger.rb", "lib/video_thumbnailer/options.rb", "lib/video_thumbnailer.rb","lib/video_thumbnailer/generate_command.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "carrierwave-video"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
