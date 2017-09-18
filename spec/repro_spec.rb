require 'spec_helper'
require 'em-synchrony'
require 'em-synchrony/em-http'

describe "Reproducible test case" do
  it "should work if the bug is fixed" do
    url = 'http://example.com/'
    if ENV['NO_MOCK']
      WebMock.allow_net_connect!
    else
      stub_request(:get, url).to_return(
        status: 200,
        body: 'hello',
        headers: { 'Content-Type': 'text/plain' }
      )
    end

    EM.synchrony do
      result = EM::Synchrony.sync EventMachine::HttpRequest.new(url).aget
      EventMachine.stop
    end
  end
end
