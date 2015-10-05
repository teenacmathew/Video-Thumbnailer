module VideoResizeGem

  class Uploader

    require "carrierwave"
    require "mini_magick"
    require "rmagick"

    include CarrierWave
    include MiniMagick
    include RMagick

    def self.upload?
      puts "YOU ARE AWESOME!!"
    end

  end

end
