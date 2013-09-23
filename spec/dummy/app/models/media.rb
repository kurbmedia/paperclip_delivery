class Media
  include ActiveModel::Naming
  include ActiveModel::Validations
  include ActiveModel::Callbacks
  include Paperclip::Glue
  
  define_model_callbacks :save, :create, :update, :destroy
  
  has_attached_file :file  
  
  has_attached_file :image,
    :styles => { 
      :original => "1500x1500>"
    }
  
end