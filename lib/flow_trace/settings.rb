module FlowTrace
  class Settings
    extend ::Dry::Configurable

    setting :proxy_url, 'http://localhost:4567'
  end
end
