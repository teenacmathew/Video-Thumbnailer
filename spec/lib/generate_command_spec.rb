require 'spec_helper'
require 'video_thumbnailer/generate_command'

RSpec.describe "generate_command" do

  it "runs with generate_command" do
    generate_command = VideoThumbnailer::GenerateCommand.new("/home/teena/video_upload_app/public/uploads/tmp/1444973790-5947-8599/thumb_ff.mp4
", "/home/teena/video_upload_app/public/uploads/tmp/1444973790-5947-8599/tmpfile.jpg")
    expect(generate_command.generate_command).to eq("ffmpeg -vframes 1 /home/teena/video_upload_app/public/uploads/tmp/1444973790-5947-8599/tmpfile.jpg -i /home/teena/video_upload_app/public/uploads/tmp/1444973790-5947-8599/thumb_ff.mp4\n")
  end

end
