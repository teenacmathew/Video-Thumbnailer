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

  it "runs with options" do
    options = VideoThumbnailer::Options.new({:rotate => 90})
    expect(options.to_options).to eq("-vf transpose=1 -vframes 1")
  end

  it "runs with options" do
    options = VideoThumbnailer::Options.new({:quality => 5})
    expect(options.to_options).to eq("-q 5 -vframes 1")
  end

  it "runs with options" do
    options = VideoThumbnailer::Options.new({:size => "40", :time_frame => '00:00:04', :file_extension => "jpg", :rotate => 90, :quality => 5})
    expect(options.to_options).to eq("-s 40 -ss 00:00:04 -c jpg -vf transpose=1 -q 5 -vframes 1")
  end

end
