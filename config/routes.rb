Paperclip::Engine.routes.draw do
  get "/:token" => "attachments#deliver", as: :attachment
end