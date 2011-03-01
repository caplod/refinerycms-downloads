Refinery::Application.routes.draw do
  resources :downloads, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :downloads, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
