Rails.application.routes.draw do
  root 'top#index'
  get '/channel_details', to: 'channel_details#show', as: 'channel_details_show'
end
