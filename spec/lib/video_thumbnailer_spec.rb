require 'spec_helper'
require 'video_thumbnailer'

RSpec.describe VideoThumbnailer do

  RSpec.describe "generate_thumb" do

    it "runs with options" do
      opts = {
        :height => "40",
        :width => "20"
      }

      options = VideoThumbnailer.instance_methods opts
      expect(options).to eq([:generate_thumb ])
    end

  end

end
