require "video_thumbnailer/version"
require_relative "ffmpeg_thumbnail"

module  VideoThumbnailer 
include FfmpegThumbnail

 def generate_thumb(param_video)
  tmp_path = File.join( File.dirname(current_path), "tmpfile.jpg" )
  a = Thumbnail.new(current_path, tmp_path)
  a.generate_command(param_video)
  p "********************************"
  p "#{tmp_path}"
  p current_path
  p "********************************"
  File.rename  "#{tmp_path}", current_path
  end

end