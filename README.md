# VideoThumbnailer

A thumbnailer plugin for Carrierwave. This can be used to generate thumbnails for videos uploaded with carrier-wave.

## Requirements

 This only works with the installation of ffmpeg.

[Download/Ubuntu](https://gist.githubusercontent.com/xdamman/e4f713c8cd1a389a5917/raw/7ebe0b7010ad59a61ddccf5c455d226c843584dc/install_ffmpeg_ubuntu.sh)

And then execute:

    $ sudo bash filename.sh


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'video_thumbnailer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install video_thumbnailer

## Usage

In the Rails app/uploaders/filename.rb, call the generate_thumb function with options.
The options are passed as hash to this function, can be also empty.

The options are:

* size - The height x width of the thumbnail to be generated, by default will take the same size of that of the video, type is string.
* file_extension - Format of the file to be saved, by default the format at will be "jpeg", type is string.
* rotate - Orientation of the thumbnail image generated(Can be 90/180/270), type is integer.
* quality - Quality of the file to be saved, type is integer.
* time_frame - The time in the video at which the thumbnail must be generated, type is string.


## Examples

Here's a working example:

In your Rails app/uploaders/video_uploader.rb:

```ruby
class VideoUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  include VideoThumbnailer
  storage :file

  version :thumb do
     process generate_thumb:[{:size => "200x200",:quality => 5, :time_frame => "00:0:04", :file_extension => "jpeg", :rotate => 180 }]
    def full_filename for_file
      png_name for_file, version_name, "jpeg"
    end
  end

  def png_name for_file, version_name, format
    %Q{#{version_name}_#{for_file.chomp(File.extname(for_file))}.#{format}}
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w( mp4 jpg jpeg gif png )
  end

end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/teenacmathew/Video-Thumbnailer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
