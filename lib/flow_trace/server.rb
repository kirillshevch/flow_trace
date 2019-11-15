require 'sinatra'
require 'byebug'

module FlowTrace
  class Server < ::Sinatra::Base
    post '/' do
      p params
    end
  end
end
