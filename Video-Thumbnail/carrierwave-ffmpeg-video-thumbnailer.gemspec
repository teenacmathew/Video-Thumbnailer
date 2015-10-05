Gem::Specification.new do |s|
  s.name = %q{carrierwave-ffmpeg-video-thumbnailer}
  s.version = "0.0.0"
  s.date = %q{2015-09-29}
  s.summary = %q{video_resize_gem compresses the video uploaded.}
  s.files = ["lib/carrierwave-ffmpeg-video-thumbnailer.rb"]
  s.authors = ["Radhika","Teena"]
  s.require_paths = ["lib"]
  s.add_dependency 'carrierwave', '>= 0'
  s.add_development_dependency 'pry',  '>= 0'
  s.add_development_dependency 'activesupport', '~> 3.2.8', '>= 0'
  s.add_development_dependency 'bundler', '~> 1.0', '>= 0'
  s.add_development_dependency 'rake', '0.8', '>= 0'
  s.add_development_dependency 'rspec', '~> 2.4', '>= 0'
  s.add_development_dependency 'rubygems-tasks', '0.2', '>= 0'
  s.add_development_dependency 'yard', '~> 0.8', '>= 0'
  
end

