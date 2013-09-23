require 'base64'
require 'paperclip'

module Paperclip
  module Delivery
    extend self
    
    autoload :Attachment, 'paperclip/delivery/attachment'
    
    def encode_token(token)
      Base64.encode64(token).tr("\n=",'')
    end
    
    def decode_token(token)
      pad = token.length % 4
      Base64.decode64(token.tr('~', '/').to_s + '=' * pad)
    end
       
    def load(token)
      opts = MultiJson.decode(decode_token(token))
      Attachment.new(opts)
    end
    
  end
end

require "paperclip/engine"