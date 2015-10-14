require "video_thumbnailer/version"
require_relative "ffmpeg_thumbnail"
# require 'open3'

#  module FfmpegThumbnail
# 	class Thumbnail
# 	  attr_reader :input_path, :output_path

# 	  def initialize(in_path, out_path)
# 	  	@input_path = in_path
# 	  	@output_path = out_path
# 	  end

# 	  def generate_command options = {}
# 	  	cmd = %Q(ffmpeg -i #{input_path})
# 	  	# Adding Rotation
#  		cmd += set_rotation(options[:rotate]) if options[:rotate]
# 	  	cmd += %Q( -ss #{options[:time]}) if options[:time]
# 	  	# Adding thumbnail size
# 	  	cmd += %Q( -s #{options[:width]}x#{options[:height]}) if options[:height] && options[:width]
# 	 	cmd += %Q( -vframes 1  #{output_path})
# 	  	p cmd
#      	 exit_code = nil
#       	error = nil
# 	  	raise Errno::ENOENT unless File.exist?(@input_path)
#       	Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|			  
# 			  error =  stderr.read
# 			  exit_code = wait_thr.value
# 			end
#       	handle_exit_code(exit_code, error)
# 	  end

# 	  private

# 	  	def handle_exit_code(exit_code, error)
#          if exit_code == 0
#            puts "Success!"
#          else
#            puts error
#            puts "Failure!"
#          end
#          exit_code
#      	 end

#       def set_rotation(degree)
#       	 case degree
# 		  	 when 90
# 		  	 	%Q( -vf "transpose=1")
# 		  	 when 180
# 		  	 	%Q( -vf vflip )
# 		  	 when 270
# 		  	 	%Q( -vf "transpose=2")
# 		  	 else
# 		  	 		" "		  			
# 		  end 
#     end
#   end
# end

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