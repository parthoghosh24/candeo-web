Rails.application.routes.draw do
  root to:'web#home'

  match '/terms', to:'web#terms', via:'get', as: :terms

  match '/contact', to:'web#contact', via:'get', as: :contact

  match '/privacy', to:'web#privacy', via:'get', as: :privacy

  match '/u/:username', to:'web#user', via:'get', as: :user

  match '/c/:short_id', to:'web#content', via:'get', as: :content


end
