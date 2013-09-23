require 'rails'
require 'paperclip'

module Paperclip
  class Engine < Rails::Engine
    isolate_namespace Paperclip
    paths['app/controllers'] << File.expand_path('../../../app/controllers/',__FILE__)
  end
  
end
