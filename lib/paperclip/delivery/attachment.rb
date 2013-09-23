require 'multi_json'

module Paperclip
  module Delivery
    
    class Attachment
      attr_accessor :options
     
      def initialize(opts = {})
        @options = opts
      end
 
    end
  end
end