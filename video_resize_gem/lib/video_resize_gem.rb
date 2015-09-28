module VideoResizeGem

  class Uploader < CarrierWave::Uploader::Base

    require "carrierwave"
    require "mini_magick"
    require "rmagick"

    def self.upload?
      puts "YOU ARE AWESOME!!"
    end

  end

end
