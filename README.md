# VideoThumbnailer

A thumbnailer plugin for Carrierwave. This can be used to generate thumbnails for videos uploaded with carrier-wave.

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
The options are passed as hash to this function.
The options are:
height - Height of the thumbnail to be generated.
width - width of the thumbnail to be generated.
rotate - orientation of the thumbnail imgae generated.(Can be 90/180/270)
time - The time in the video at which the thumbnail must be generated.
 
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/video_thumbnailer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
