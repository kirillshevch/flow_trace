RSpec.describe FlowTrace::Step do
  describe '.call' do
    it 'should post trace request' do
      VCR.use_cassette('flow_trace_server') do
        expect(FlowTrace::Step.call(:flow_name, :step_name, { additional: 'data' }).code).to eq(200)
      end
    end
  end
end
