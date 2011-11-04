Refinery::Application.routes.draw do  
  scope(:path => 'download', :module => 'download') do
    root :to => 'files#index' , :as => 'download_root'
  end
  
  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    scope(:path => 'download', :as => 'download', :module => 'download') do
      root :to => 'files#index'
      resources :files 
      resources :categories
    end
    
  end
end
