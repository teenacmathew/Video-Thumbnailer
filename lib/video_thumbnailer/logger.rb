module VideoThumbnailer
  class Logger
  	attr_reader :logger

  	def initialize options
  	  if options.has_key? :logger
  	  	@logger = options[:logger]
  	  else
  	  	@logger = Logger.new(STDOUT)
  	  	@logger.level = Logger::INFO
  	  end
  	end
  end
end
