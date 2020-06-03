require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

require 'bundler'
Bundler.require(:default, :test)

# require File.expand_path '../../lib/video_microservice.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  def app() described_class end
end

RSpec.configure { |c| c.include RSpecMixin }