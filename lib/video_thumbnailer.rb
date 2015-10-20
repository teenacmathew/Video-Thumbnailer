require "video_thumbnailer/version"
require 'open3'
require "video_thumbnailer/generate_command"
require "video_thumbnailer/options"
require "video_thumbnailer/logger"

module  VideoThumbnailer

  def generate_thumb options = {}
    options[:file_extension] ||= 'jpeg'
    options[:logger] = Rails.logger
    tmp_path = File.join( File.dirname(current_path), "tmpfile.#{options[:file_extension]}")
    thumbnail = GenerateCommand.new(current_path, tmp_path)
    cmd = thumbnail.generate_command(options)
    logger = VideoThumbnailer::Logger.new(options).logger
    logger.info("Running command: #{cmd}")
    exit_code, error = nil
    raise Errno::ENOENT unless File.exist?(current_path)
    Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
      error =  stderr.read
      exit_code = wait_thr.value
    end
    handle_exit_code(exit_code, error, logger)
    File.rename tmp_path, current_path
  end

  private

  def handle_exit_code(exit_code, error, logger)
    if exit_code == 0
      logger.info "Success!"
    else
      logger.error "Failure due to following error:  #{error}"
    end
    exit_code
  end

end
