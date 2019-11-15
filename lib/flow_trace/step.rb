module FlowTrace
  class Step
    attr_reader :flow, :step, :options

    def self.call(*args)
      new(*args).call
    end

    def initialize(flow, step, **options)
      @flow = flow
      @step = step
      @options = options
    end

    def call
      HTTP.post(FlowTrace::Settings.config.proxy_url, json: payload)
    end

    private

    def payload
      {
        flow: flow,
        step: step,
        options: options
      }
    end
  end
end
