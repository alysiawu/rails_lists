Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :lists # this will add the correct routes!!! whattt
      resources :notes # this will add the correct routes!!! whattt
      resources :users # this will add the correct routes!!! whattt
    end 
  end 
end
