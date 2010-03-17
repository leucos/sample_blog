PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)
require File.dirname(__FILE__) + "/../config/boot"

class Test::Unit::TestCase
  include Mocha::API
  include Rack::Test::Methods

  def app
    # Sinatra < 1.0 always disable sessions for test env
    # so if you need them it's necessary force the use 
    # of Rack::Session::Cookie
    SampleBlog.tap { |app| app.use Rack::Session::Cookie }
    # You can hanlde all padrino applications using instead:
    #   Padrino.application
  end
end
