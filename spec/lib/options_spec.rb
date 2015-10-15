require 'spec_helper'
require 'video_thumbnailer/options'

 RSpec.describe "to_options" do

    it "runs with options" do
      options = VideoThumbnailer::Options.new({:size => "40"})
      expect(options.to_options).to eq("-s 40 -vframes 1")
    end


    it "runs with options" do
      options = VideoThumbnailer::Options.new({:time_frame => '00:00:04'})
      expect(options.to_options).to eq( "-ss 00:00:04 -vframes 1")
    end


    it "runs with options" do
      options = VideoThumbnailer::Options.new({:file_extension => "jpg"})
      expect(options.to_options).to eq("-c jpg -vframes 1")
    end

  end
