require 'paperclip/delivery/attachment'

module Paperclip
  class AttachmentsController < ActionController::Metal
    include ActionController::Rendering
    include ActionController::MimeResponds
    
    def deliver
      render text: "file"
    end
    
    private
    
    def attachment
      @attachment ||= Paperclip::Delivery.load(params[:token])
    end
  end
end
