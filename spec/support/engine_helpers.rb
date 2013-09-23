module EngineHelpers
  include Rack::Test::Methods
  
  def app
    Dummy::Application
  end
end