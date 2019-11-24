require 'sinatra/base'
require 'flow_trace'

module FlowTrace
  class Server < ::Sinatra::Base
    attr_reader :data

    enable :quiet
    set :server, :thin

    post '/' do
      FlowTrace.logger.info "\n"
      FlowTrace.logger.info 'Flow: ' + data['flow']
      FlowTrace.logger.info 'Step: ' + data['step']

      FlowTrace.logger.info data['options']
    end

    private

    def data
      @data ||= JSON.parse(request.body.read)
    end
  end
end
