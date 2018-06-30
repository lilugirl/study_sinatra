require_relative "app"
require "respec"
require "rack/test"

describe "Hello application" do
  include Rack::Test::Methods

  def app
    Sinatra::application
  end

  it "says hello" do
    get "/hello"
    last_response.should be_ok
    last_response.body.should=="Hello, Sinatra"
  end
  
end
