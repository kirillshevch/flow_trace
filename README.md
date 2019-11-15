# FlowTrace

Brand new remote app inspecting tool. Declare feature steps and receive params, stack trace and whatever you want.

* Look into what happens on you *staging* environments
* Doesn't have payloads for tests, debugging, bug fix? Get data during reproducing feature flow.

## Installation

Add this line to your application's Gemfile and then execute `bundle install`:

```ruby
gem 'flow_trace'
```

## Usage

1. Configuration

Use `https` proxy (for example `ngrok`) to local `4567` port.

`config/initializers/flow_trace.rb`
```ruby
FlowTrace::Settings.configure do |config|
  config.proxy_url = 'http://0000000.ngrok.io'
end
```

2. Declare remote flow

```ruby
FlowTrace::Step.call(:flow_name, :step_name, {})
```

3. Start receive messages (locally)

```
bundle exec flow_trace
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kirillshevch/flow_trace.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
