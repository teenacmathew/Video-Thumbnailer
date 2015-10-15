require "video_thumbnailer/version"
require 'open3'
require_relative "video_thumbnailer/generate_command"


module  VideoThumbnailer

  def generate_thumb options = {}
    tmp_path = File.join( File.dirname(current_path), "tmpfile.jpg" )
    thumbnail = GenerateCommand.new(current_path, tmp_path)
    cmd = thumbnail.generate_command(options)
    exit_code = nil
    error = nil
    raise Errno::ENOENT unless File.exist?(current_path)
    Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
      error =  stderr.read
      exit_code = wait_thr.value
    end
    handle_exit_code(exit_code, error)
    File.rename  tmp_path, current_path
  end

  private

  def handle_exit_code(exit_code, error)
    if exit_code == 0
      puts "Success!"
    else
      puts error
      puts "Failure!"
    end
    exit_code
  end

  def set_rotation(degree)
    case degree
    when 90
      %Q( -vf "transpose=1")
    when 180
      %Q( -vf vflip )
    when 270
      %Q( -vf "transpose=2")
    else
      " "
    end
  end
end
