require 'http'
require 'json'
require 'dry-configurable'
require 'flow_trace/version'
require 'flow_trace/settings'
require 'flow_trace/step'
require 'logger'

module FlowTrace
  class << self
    attr_writer :logger

    def logger
      @logger ||= Logger.new($stdout).tap do |log|
        log.progname = self.name
      end

      @logger.formatter = proc do |severity, datetime, progname, msg|
        "#{msg}\n"
      end

      @logger
    end
  end
end
